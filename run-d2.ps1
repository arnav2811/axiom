# Footprint Lens (D2 Low-Fidelity Interactive Prototype)
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

Write-Host "============================================================" -ForegroundColor Yellow
Write-Host "Starting Footprint Lens (D2 Low-Fidelity Interactive Prototype)..." -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Yellow

$htmlFile = Join-Path $PSScriptRoot "New\D2\prototype\index.html"

$pythonCmd = Get-Command python -ErrorAction SilentlyContinue
if ($null -ne $pythonCmd) {
    Write-Host "Starting local web server on port 8080..." -ForegroundColor Cyan
    Start-Process "http://localhost:8080"
    & python -m http.server 8080 --directory New\D2\prototype
} else {
    Write-Host "Opening prototype directly in your default browser..." -ForegroundColor Cyan
    Start-Process $htmlFile
}
