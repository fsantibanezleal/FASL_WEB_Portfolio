#!/usr/bin/env bash
# ------------------------------------------------------------------
#  cPanel Git Deployment — FASL.work portfolio
#
#  Called by .cpanel.yml after cPanel pulls the repo.
#  Copies the pre-built static site (cpanel-dist/) into public_html.
# ------------------------------------------------------------------

set -Eeuo pipefail

# ── Paths ────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PREBUILT_DIR="$REPO_ROOT/cpanel-dist"
BUILD_DIR="$REPO_ROOT/dist"

# DEPLOYPATH: default to $HOME/public_html (cPanel standard).
# Override via environment if needed.
DEPLOYPATH="${DEPLOYPATH:-${HOME}/public_html}"
DEPLOYPATH="${DEPLOYPATH%/}"   # strip trailing slash

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
      log "ABORT: refusing to deploy outside \$HOME/public_html: $DEPLOYPATH"
      exit 1
      ;;
  esac
}

# ── Source selection ─────────────────────────────────────────────
choose_source() {
  # Option A: pre-built artifact committed to repo
  if [ -d "$PREBUILT_DIR" ] && [ -n "$(ls -A "$PREBUILT_DIR" 2>/dev/null)" ]; then
    SOURCE_DIR="$PREBUILT_DIR"
    log "Source: cpanel-dist/ (pre-built artifact)."
    return
  fi

  # Option B: build on server if Node.js available
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
#  Strategy: delete only OUR files, then copy fresh.
#  Preserve hosting-managed items that may exist in public_html.
PRESERVE=(.htaccess .well-known cgi-bin error_log .trash .fantasticodata)

do_deploy() {
  # Remove previous site files, but keep preserved items
  local exclude_args=()
  for item in "${PRESERVE[@]}"; do
    exclude_args+=( ! -name "$item" )
  done

  find "$DEPLOYPATH" -mindepth 1 -maxdepth 1 \
    "${exclude_args[@]}" \
    -exec rm -rf {} +

  # Copy new site
  cp -R "$SOURCE_DIR"/. "$DEPLOYPATH"/
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

log "Deploy finished — $(find "$DEPLOYPATH" -type f | wc -l) files in $DEPLOYPATH"
log "=========================================="
