#!/usr/bin/env bash

set -Eeuo pipefail

LOG_ROOT="${HOME:-/home/faslwork}/deploy-logs"
mkdir -p "$LOG_ROOT"
LOG_FILE="$LOG_ROOT/fasl-portfolio.log"

log() {
  local message="[cpanel-deploy] $1"
  printf '%s\n' "$message"
  printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$message" >>"$LOG_FILE"
}

require_safe_target() {
  case "$DEPLOYPATH" in
    /home/*/public_html/*) ;;
    *)
      log "Refusing to deploy outside public_html: $DEPLOYPATH"
      exit 1
      ;;
  esac
}

has_prebuilt_artifact() {
  [ -d "$PREBUILT_DIR" ] && find "$PREBUILT_DIR" -mindepth 1 -print -quit | grep -q .
}

has_node_toolchain() {
  command -v node >/dev/null 2>&1 && command -v npm >/dev/null 2>&1
}

prepare_source_dir() {
  if has_prebuilt_artifact; then
    SOURCE_DIR="$PREBUILT_DIR"
    log "Using committed cpanel-dist/ artifact."
    return
  fi

  if has_node_toolchain; then
    log "cpanel-dist/ not found. Building on the server with npm."
    (
      cd "$REPO_ROOT"
      npm ci
      npm run build
    )
    SOURCE_DIR="$BUILD_DIR"
    return
  fi

  log "No cpanel-dist/ artifact found and Node.js is unavailable."
  exit 1
}

deploy_with_rsync() {
  rsync -a --delete \
    --exclude='.htaccess' \
    --exclude='.well-known/' \
    --exclude='cgi-bin/' \
    "$SOURCE_DIR"/ "$DEPLOYPATH"/
}

deploy_without_rsync() {
  find "$DEPLOYPATH" -mindepth 1 -maxdepth 1 \
    ! -name '.htaccess' \
    ! -name '.well-known' \
    ! -name 'cgi-bin' \
    -exec rm -rf {} +

  cp -R "$SOURCE_DIR"/. "$DEPLOYPATH"/
}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PREBUILT_DIR="$REPO_ROOT/cpanel-dist"
BUILD_DIR="$REPO_ROOT/dist"
DEPLOYPATH="${DEPLOYPATH:-${HOME}/public_html/fasl.work}"
DEPLOYPATH="${DEPLOYPATH%/}"

require_safe_target
log "Starting deployment from $REPO_ROOT"
prepare_source_dir

mkdir -p "$DEPLOYPATH"

if command -v rsync >/dev/null 2>&1; then
  log "Deploying with rsync to $DEPLOYPATH/"
  deploy_with_rsync
else
  log "Deploying with cp to $DEPLOYPATH/"
  deploy_without_rsync
fi

log "Deployment finished."
