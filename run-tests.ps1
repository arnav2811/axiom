# Footprint Lens — Run Tests
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "Footprint Lens — Run Tests"                                   -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

$mvnCmd = Get-Command mvn -ErrorAction SilentlyContinue
if (-not $mvnCmd) {
    $mvnCmd = Get-ChildItem "$env:USERPROFILE\.m2\wrapper\dists" -Recurse -Filter "mvn.cmd" -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($mvnCmd) { $mvnCmd = $mvnCmd.FullName }
}

if (-not $mvnCmd) {
    Write-Error "Maven not found. Please install Maven 3.9+ and run: cd New\application; mvn clean test"
    exit 1
}

Push-Location "New\application"
& $mvnCmd clean test
$exitCode = $LASTEXITCODE
Pop-Location

if ($exitCode -eq 0) {
    Write-Host "[SUCCESS] All tests passed." -ForegroundColor Green
} else {
    Write-Host "[WARNING] Tests had failures. Check output above." -ForegroundColor Red
}
