#!/usr/bin/env bash
# ------------------------------------------------------------------
#  Local runner for FASL_WEB_Portfolio
#
#  Usage:
#    scripts/local.sh dev       # Astro dev server (fast, hot reload)
#    scripts/local.sh preview   # build + serve exactly what will deploy
#    scripts/local.sh check     # schema + lint + format (no server)
#    scripts/local.sh stop      # kill any running dev/preview server
#
#  Dev server runs on http://localhost:4321
#  Preview server runs on http://localhost:4321 (same port, different mode)
#
#  Works on Git Bash (Windows), macOS, Linux. Needs Node + npm installed
#  locally; uses whatever is already in node_modules/.
# ------------------------------------------------------------------

set -Eeuo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
PORT=4321

cd "$REPO_ROOT"

cmd="${1:-dev}"

print_urls() {
  cat <<EOF

  Portfolio is up at:

    EN home           http://localhost:$PORT/
    EN listing        http://localhost:$PORT/portfolio
    EN product detail http://localhost:$PORT/portfolio/mine-pile-visualizer

    ES home           http://localhost:$PORT/es/
    ES listing        http://localhost:$PORT/es/portfolio
    ES product detail http://localhost:$PORT/es/portfolio/mine-pile-visualizer

  Note: URLs are slash-less (clean URLs). /portfolio/ with trailing slash returns 404 by design.

  All 22 products live under /portfolio/<slug> — slugs match src/data/products/<slug>.md filenames.

  Ctrl+C to stop.

EOF
}

ensure_deps() {
  if [ ! -d node_modules ]; then
    echo "node_modules/ missing — running npm install..."
    npm install
  fi
}

stop_servers() {
  # Best-effort kill of anything listening on $PORT (Astro dev + preview both use 4321)
  if command -v lsof >/dev/null 2>&1; then
    pids=$(lsof -ti :$PORT 2>/dev/null || true)
    if [ -n "$pids" ]; then
      echo "Killing PIDs on port $PORT: $pids"
      echo "$pids" | xargs -r kill -9
    else
      echo "No process listening on $PORT."
    fi
  elif command -v netstat >/dev/null 2>&1; then
    # Windows Git Bash fallback
    pids=$(netstat -ano | grep ":$PORT " | awk '{print $5}' | sort -u || true)
    if [ -n "$pids" ]; then
      echo "Killing PIDs on port $PORT: $pids"
      for p in $pids; do taskkill //PID "$p" //F 2>/dev/null || true; done
    else
      echo "No process listening on $PORT."
    fi
  else
    echo "Neither lsof nor netstat available — kill the server manually."
    exit 1
  fi
}

case "$cmd" in
  dev)
    ensure_deps
    print_urls
    exec npm run dev -- --port "$PORT"
    ;;
  preview)
    ensure_deps
    echo "Building static artifact (dist/)..."
    npm run build
    echo
    echo "Serving the exact dist/ that would ship to the VPS."
    print_urls
    exec npm run preview -- --port "$PORT"
    ;;
  check)
    ensure_deps
    echo "Running astro check + eslint + prettier..."
    npm run check
    ;;
  stop)
    stop_servers
    ;;
  *)
    echo "Unknown command: $cmd"
    echo "Usage: $0 {dev|preview|check|stop}"
    exit 2
    ;;
esac
