#!/usr/bin/env bash
# ------------------------------------------------------------------
#  cPanel Git Deployment — FASL.work portfolio
#
#  Called by .cpanel.yml after cPanel pulls the repo.
#  Copies the pre-built static site into public_html (primary domain).
#
#  CRITICAL: public_html also contains addon domain subdirectories
#  (e.g. micromundo.team/). This script uses a MANIFEST of known
#  site files to clean only our files, never touching other folders.
# ------------------------------------------------------------------

set -Eeuo pipefail

# ── Paths ────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PREBUILT_DIR="$REPO_ROOT/cpanel-dist"
BUILD_DIR="$REPO_ROOT/dist"

DEPLOYPATH="${DEPLOYPATH:-${HOME}/public_html}"
DEPLOYPATH="${DEPLOYPATH%/}"

# ── Logging ──────────────────────────────────────────────────────
LOG_DIR="$HOME/deploy-logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/fasl-portfolio.log"

log() {
  local msg="[cpanel-deploy] $1"
  printf '%s\n' "$msg"
  printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$msg" >> "$LOG_FILE"
}

# ── Safety ───────────────────────────────────────────────────────
require_safe_target() {
  case "$DEPLOYPATH" in
    "$HOME"/public_html|"$HOME"/public_html/*)
      ;;
    *)
      log "ABORT: DEPLOYPATH is outside public_html: $DEPLOYPATH"
      exit 1
      ;;
  esac
}

# ── Source selection ─────────────────────────────────────────────
choose_source() {
  if [ -d "$PREBUILT_DIR" ] && [ -n "$(ls -A "$PREBUILT_DIR" 2>/dev/null)" ]; then
    SOURCE_DIR="$PREBUILT_DIR"
    log "Source: cpanel-dist/ (pre-built artifact)."
    return
  fi

  if command -v node >/dev/null 2>&1 && command -v npm >/dev/null 2>&1; then
    log "cpanel-dist/ not found — building with npm on server."
    ( cd "$REPO_ROOT" && npm ci && npm run build )
    SOURCE_DIR="$BUILD_DIR"
    return
  fi

  log "ABORT: no cpanel-dist/ and no Node.js available."
  exit 1
}

# ── Deploy ───────────────────────────────────────────────────────
#  Strategy: use a MANIFEST to track which files/dirs belong to our
#  site. On redeploy, remove only manifested items, then copy fresh.
#  This NEVER touches addon domain folders or hosting files.
MANIFEST_FILE="$DEPLOYPATH/.fasl-deploy-manifest"

do_deploy() {
  # Step 1: Remove previously deployed files (if manifest exists)
  if [ -f "$MANIFEST_FILE" ]; then
    log "Cleaning previous deploy using manifest..."
    local count=0
    # Remove files/dirs listed in manifest (reverse order for dirs)
    while IFS= read -r item; do
      if [ -e "$DEPLOYPATH/$item" ]; then
        rm -rf "$DEPLOYPATH/$item"
        count=$((count + 1))
      fi
    done < "$MANIFEST_FILE"
    rm -f "$MANIFEST_FILE"
    log "Removed $count items from previous deploy."
  fi

  # Step 2: Copy new site files
  cp -R "$SOURCE_DIR"/. "$DEPLOYPATH"/

  # Step 3: Generate manifest of what we just deployed
  # List all top-level items that came from our source
  ( cd "$SOURCE_DIR" && find . -maxdepth 1 -mindepth 1 -printf '%f\n' ) \
    | sort > "$MANIFEST_FILE"
  log "Wrote manifest with $(wc -l < "$MANIFEST_FILE") entries."
}

# ── Main ─────────────────────────────────────────────────────────
log "=========================================="
log "Deploy starting"
log "  REPO_ROOT:  $REPO_ROOT"
log "  DEPLOYPATH: $DEPLOYPATH"
log "  HOME:       $HOME"

require_safe_target
choose_source

log "  SOURCE_DIR: $SOURCE_DIR"

mkdir -p "$DEPLOYPATH"
do_deploy

log "Deploy finished — $(find "$DEPLOYPATH" -maxdepth 1 -type f | wc -l) files at root of $DEPLOYPATH"
log "=========================================="
