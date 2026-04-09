#!/usr/bin/env bash
# ------------------------------------------------------------------
#  cPanel Git Deployment — FASL.work portfolio
#
#  Called by .cpanel.yml after cPanel pulls the repo.
#  Copies the pre-built static site (cpanel-dist/) into the
#  domain-specific subdirectory under public_html.
#
#  CRITICAL: This script ONLY touches files inside DEPLOYPATH.
#  It will NEVER write to public_html root or other site folders.
# ------------------------------------------------------------------

set -Eeuo pipefail

# ── Configuration ────────────────────────────────────────────────
# The subdirectory under public_html where fasl-work.com lives.
# Change this if cPanel maps the domain to a different folder.
SITE_DIR="fasl-work.com"

# ── Paths ────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PREBUILT_DIR="$REPO_ROOT/cpanel-dist"
BUILD_DIR="$REPO_ROOT/dist"

DEPLOYPATH="${DEPLOYPATH:-${HOME}/public_html/${SITE_DIR}}"
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

# ── Safety checks ────────────────────────────────────────────────
require_safe_target() {
  # Must be a subdirectory of public_html — NEVER public_html itself
  case "$DEPLOYPATH" in
    "$HOME"/public_html/*)
      ;;
    "$HOME"/public_html)
      log "ABORT: DEPLOYPATH is public_html root — this would destroy other sites!"
      log "       Set SITE_DIR in the script or override DEPLOYPATH."
      exit 1
      ;;
    *)
      log "ABORT: DEPLOYPATH is outside public_html: $DEPLOYPATH"
      exit 1
      ;;
  esac

  # Extra guard: the target directory name must contain "fasl"
  local dirname
  dirname="$(basename "$DEPLOYPATH")"
  case "$dirname" in
    *fasl*|*FASL*)
      ;;
    *)
      log "ABORT: target directory '$dirname' doesn't look like a FASL site."
      log "       This is a safety check to prevent deploying to the wrong folder."
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
do_deploy() {
  # Since this is a dedicated subdirectory for fasl-work.com ONLY,
  # we can safely clean everything inside it and replace with fresh files.
  # We still preserve .htaccess in case cPanel or SSL config put one there.

  if [ -d "$DEPLOYPATH" ]; then
    find "$DEPLOYPATH" -mindepth 1 -maxdepth 1 \
      ! -name '.htaccess' \
      -exec rm -rf {} +
  fi

  cp -R "$SOURCE_DIR"/. "$DEPLOYPATH"/
}

# ── Main ─────────────────────────────────────────────────────────
log "=========================================="
log "Deploy starting"
log "  REPO_ROOT:  $REPO_ROOT"
log "  DEPLOYPATH: $DEPLOYPATH"
log "  SITE_DIR:   $SITE_DIR"
log "  HOME:       $HOME"

require_safe_target
choose_source

log "  SOURCE_DIR: $SOURCE_DIR"

mkdir -p "$DEPLOYPATH"
do_deploy

log "Deploy finished — $(find "$DEPLOYPATH" -type f | wc -l) files in $DEPLOYPATH"
log "=========================================="
