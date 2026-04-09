#!/usr/bin/env bash
# ------------------------------------------------------------------
#  cPanel Git Deployment — FASL.work portfolio
#
#  Deploys to public_html/fasl-work.com/ (subdirectory).
#  Installs .htaccess rewrite in public_html/ root so that
#  requests to fasl-work.com are served from the subdirectory.
#
#  NEVER writes loose files into public_html/ root.
#  NEVER deletes other sites' folders.
# ------------------------------------------------------------------

set -Eeuo pipefail

# ── Configuration ────────────────────────────────────────────────
SITE_DIR="fasl-work.com"

# ── Paths ────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PREBUILT_DIR="$REPO_ROOT/cpanel-dist"
BUILD_DIR="$REPO_ROOT/dist"
PUBLIC_HTML="$HOME/public_html"
DEPLOYPATH="$PUBLIC_HTML/$SITE_DIR"

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
  # Must be a subdirectory, NEVER public_html itself
  case "$DEPLOYPATH" in
    "$PUBLIC_HTML"/*)
      ;;
    *)
      log "ABORT: DEPLOYPATH must be a subdirectory of public_html."
      log "       Got: $DEPLOYPATH"
      exit 1
      ;;
  esac

  # Must contain "fasl" in the directory name
  case "$(basename "$DEPLOYPATH")" in
    *fasl*|*FASL*) ;;
    *)
      log "ABORT: target '$(basename "$DEPLOYPATH")' doesn't look like a FASL site."
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

# ── Deploy site to subdirectory ──────────────────────────────────
do_deploy() {
  # Clean the subdirectory (only our folder, nothing else)
  if [ -d "$DEPLOYPATH" ]; then
    find "$DEPLOYPATH" -mindepth 1 -maxdepth 1 \
      ! -name '.htaccess' \
      -exec rm -rf {} +
    log "Cleaned $DEPLOYPATH/"
  fi

  mkdir -p "$DEPLOYPATH"
  cp -R "$SOURCE_DIR"/. "$DEPLOYPATH"/
  log "Copied site to $DEPLOYPATH/"
}

# ── Install .htaccess rewrite in public_html root ────────────────
HTACCESS_CONF="$REPO_ROOT/scripts/htaccess-root.conf"
ROOT_HTACCESS="$PUBLIC_HTML/.htaccess"
MARKER_BEGIN="# --- BEGIN fasl-work.com rewrite ---"
MARKER_END="# --- END fasl-work.com rewrite ---"

install_htaccess_rules() {
  if [ ! -f "$HTACCESS_CONF" ]; then
    log "WARNING: htaccess-root.conf not found, skipping."
    return
  fi

  # No .htaccess exists yet — create with our rules only
  if [ ! -f "$ROOT_HTACCESS" ]; then
    cp "$HTACCESS_CONF" "$ROOT_HTACCESS"
    log "Created $ROOT_HTACCESS"
    return
  fi

  # Remove old block if present
  if grep -q "$MARKER_BEGIN" "$ROOT_HTACCESS" 2>/dev/null; then
    sed -i "/$MARKER_BEGIN/,/$MARKER_END/d" "$ROOT_HTACCESS"
    log "Removed old fasl-work.com block from .htaccess"
  fi

  # Prepend our rules at TOP (must run before any WordPress catch-all)
  local tmp
  tmp=$(mktemp)
  cat "$HTACCESS_CONF" > "$tmp"
  printf '\n' >> "$tmp"
  cat "$ROOT_HTACCESS" >> "$tmp"
  mv "$tmp" "$ROOT_HTACCESS"
  log "Prepended fasl-work.com rules at top of $ROOT_HTACCESS"
}

# ── Main ─────────────────────────────────────────────────────────
log "=========================================="
log "Deploy starting"
log "  REPO_ROOT:   $REPO_ROOT"
log "  DEPLOYPATH:  $DEPLOYPATH"
log "  PUBLIC_HTML: $PUBLIC_HTML"

require_safe_target
choose_source
log "  SOURCE_DIR:  $SOURCE_DIR"

do_deploy
install_htaccess_rules

log "Deploy finished — $(find "$DEPLOYPATH" -type f | wc -l) files"
log "=========================================="
