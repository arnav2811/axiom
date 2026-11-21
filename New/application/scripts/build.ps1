# Footprint Lens — Build and Verify
# Run from: New\application
$ErrorActionPreference = 'Stop'
Set-Location (Join-Path $PSScriptRoot '..')

$mvnCmd = Get-Command mvn -ErrorAction SilentlyContinue
if (-not $mvnCmd) {
    $mvnCmd = Get-ChildItem "$env:USERPROFILE\.m2\wrapper\dists" -Recurse -Filter "mvn.cmd" -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($mvnCmd) { $mvnCmd = $mvnCmd.FullName }
}

if (-not $mvnCmd) {
    throw 'Maven is required. Install Maven 3.9+ and ensure it is on PATH.'
}

Write-Host "[INFO] Building and testing with Maven..." -ForegroundColor Cyan
& $mvnCmd clean verify
