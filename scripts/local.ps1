# ------------------------------------------------------------------
#  Local runner for FASL_WEB_Portfolio (PowerShell 5.1+)
#
#  Usage:
#    .\scripts\local.ps1 dev       # Astro dev server (fast, hot reload)
#    .\scripts\local.ps1 preview   # build + serve exactly what will deploy
#    .\scripts\local.ps1 check     # schema + lint + format (no server)
#    .\scripts\local.ps1 stop      # kill any running dev/preview server
#
#  Dev server runs on http://localhost:4321
#  Preview server runs on http://localhost:4321 (same port, different mode)
#
#  Parity: mirrors scripts/local.sh subcommand-for-subcommand per
#  CAOS_MANAGE/conventions/scripts.md.
# ------------------------------------------------------------------

param(
    [Parameter(Position = 0)]
    [ValidateSet('dev', 'preview', 'check', 'stop')]
    [string]$Command = 'dev'
)

# Note: we intentionally do NOT set $ErrorActionPreference = 'Stop' here.
# In PowerShell 5.1, that turns every native-exe stderr line (including
# harmless npm warnings) into a terminating error even when the command
# exits 0. We check $LASTEXITCODE explicitly for native commands instead.

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Resolve-Path (Join-Path $ScriptDir '..')
$Port = 4321

Set-Location $RepoRoot

function Print-Urls {
    Write-Host ''
    Write-Host '  Portfolio is up at:'
    Write-Host ''
    Write-Host "    EN home           http://localhost:$Port/"
    Write-Host "    EN listing        http://localhost:$Port/portfolio"
    Write-Host "    EN product detail http://localhost:$Port/portfolio/mine-pile-visualizer"
    Write-Host ''
    Write-Host "    ES home           http://localhost:$Port/es/"
    Write-Host "    ES listing        http://localhost:$Port/es/portfolio"
    Write-Host "    ES product detail http://localhost:$Port/es/portfolio/mine-pile-visualizer"
    Write-Host ''
    Write-Host '  Note: URLs are slash-less (clean URLs). /portfolio/ with trailing slash returns 404 by design.'
    Write-Host ''
    Write-Host '  All 22 products live under /portfolio/<slug> — slugs match src/data/products/<slug>.md filenames.'
    Write-Host ''
    Write-Host '  Ctrl+C to stop.'
    Write-Host ''
}

function Ensure-Deps {
    if (-not (Test-Path 'node_modules')) {
        Write-Host 'node_modules/ missing — running npm install...'
        npm install
        if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    }
}

function Stop-Servers {
    $conns = Get-NetTCPConnection -LocalPort $Port -State Listen -ErrorAction SilentlyContinue
    if (-not $conns) {
        Write-Host "No process listening on $Port."
        return
    }
    $procIds = $conns | Select-Object -ExpandProperty OwningProcess -Unique
    Write-Host "Killing PIDs on port ${Port}: $($procIds -join ', ')"
    foreach ($procId in $procIds) {
        Stop-Process -Id $procId -Force -ErrorAction SilentlyContinue
    }
}

switch ($Command) {
    'dev' {
        Ensure-Deps
        Print-Urls
        & npm run dev -- --port $Port
    }
    'preview' {
        Ensure-Deps
        Write-Host 'Building static artifact (dist/)...'
        & npm run build
        if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
        Write-Host ''
        Write-Host 'Serving the exact dist/ that would ship to the VPS.'
        Print-Urls
        & npm run preview -- --port $Port
    }
    'check' {
        Ensure-Deps
        Write-Host 'Running astro check + eslint + prettier...'
        & npm run check
    }
    'stop' {
        Stop-Servers
    }
}
