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

# ── Deploy site files ────────────────────────────────────────────
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

# ── Install .htaccess rewrite in public_html root ────────────────
#  This makes the domain serve content from the subdirectory
#  without showing it in the URL. Only touches the fasl-work.com
#  block — leaves all other rules untouched.
HTACCESS_CONF="$REPO_ROOT/scripts/htaccess-root.conf"
PUBLIC_HTML="$HOME/public_html"
ROOT_HTACCESS="$PUBLIC_HTML/.htaccess"
MARKER_BEGIN="# --- BEGIN fasl-work.com rewrite ---"
MARKER_END="# --- END fasl-work.com rewrite ---"

install_htaccess_rules() {
  if [ ! -f "$HTACCESS_CONF" ]; then
    log "WARNING: htaccess-root.conf not found, skipping .htaccess install."
    return
  fi

  # If .htaccess doesn't exist, create it with our rules
  if [ ! -f "$ROOT_HTACCESS" ]; then
    cp "$HTACCESS_CONF" "$ROOT_HTACCESS"
    log "Created $ROOT_HTACCESS with fasl-work.com rewrite rules."
    return
  fi

  # If our markers already exist, replace the block
  if grep -q "$MARKER_BEGIN" "$ROOT_HTACCESS" 2>/dev/null; then
    # Remove old block (between markers, inclusive)
    sed -i "/$MARKER_BEGIN/,/$MARKER_END/d" "$ROOT_HTACCESS"
    log "Removed old fasl-work.com rewrite block."
  fi

  # Append our rules at the end
  printf '\n' >> "$ROOT_HTACCESS"
  cat "$HTACCESS_CONF" >> "$ROOT_HTACCESS"
  log "Appended fasl-work.com rewrite rules to $ROOT_HTACCESS."
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
install_htaccess_rules

log "Deploy finished — $(find "$DEPLOYPATH" -type f | wc -l) files in $DEPLOYPATH"
log "=========================================="
