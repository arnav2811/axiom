# Footprint Lens (D2 Low-Fidelity Interactive Prototype)
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

Write-Host "============================================================" -ForegroundColor Yellow
Write-Host "Starting Footprint Lens (D2 Low-Fidelity Interactive Prototype)..." -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Yellow

$htmlFile = Join-Path $PSScriptRoot "New\D2\prototype\index.html"
$pythonCmd = Get-Command python -ErrorAction SilentlyContinue

if ($null -ne $pythonCmd) {
    $conn = Get-NetTCPConnection -LocalPort 8080 -State Listen -ErrorAction SilentlyContinue
    if (-not $conn) {
        Write-Host "[INFO] Starting local HTTP server on port 8080..." -ForegroundColor Cyan
        Start-Process python -ArgumentList "-m http.server 8080 --directory New\D2\prototype" -WindowStyle Minimized
        Start-Sleep -Seconds 1
    } else {
        Write-Host "[INFO] Server is already active on port 8080." -ForegroundColor Green
    }
    Start-Process "http://localhost:8080"
} else {
    Write-Host "[INFO] Python not found. Opening prototype directly in browser..." -ForegroundColor Cyan
    Start-Process $htmlFile
}
