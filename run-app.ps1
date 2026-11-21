# Footprint Lens v1.0.0 — Release Candidate (D6)
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

Write-Host "============================================================" -ForegroundColor Green
Write-Host "Footprint Lens v1.0.0 — Release Candidate (D6)"             -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Green

# Try Maven first (preferred)
$mvnCmd = Get-Command mvn -ErrorAction SilentlyContinue
if (-not $mvnCmd) {
    # Try Maven wrapper
    $mvnCmd = Get-ChildItem "$env:USERPROFILE\.m2\wrapper\dists" -Recurse -Filter "mvn.cmd" -ErrorAction SilentlyContinue | Select-Object -First 1
    if ($mvnCmd) { $mvnCmd = $mvnCmd.FullName }
}

if ($mvnCmd) {
    Write-Host "[INFO] Using Maven to build and run..." -ForegroundColor Gray
    Push-Location "New\application"
    & $mvnCmd -q clean javafx:run
    Pop-Location
    return
}

# Fallback: manual javac
Write-Host "[INFO] Maven not found. Using direct javac compilation..." -ForegroundColor Yellow

$fxPath = "$env:USERPROFILE\.m2\repository\org\openjfx"
$fxJars = "$fxPath\javafx-base\23.0.1\javafx-base-23.0.1-win.jar;$fxPath\javafx-controls\23.0.1\javafx-controls-23.0.1-win.jar;$fxPath\javafx-graphics\23.0.1\javafx-graphics-23.0.1-win.jar;$fxPath\javafx-fxml\23.0.1\javafx-fxml-23.0.1-win.jar"

if (-not (Test-Path "$fxPath\javafx-base\23.0.1\javafx-base-23.0.1-win.jar")) {
    Write-Error "JavaFX libraries not found at: $fxPath`nPlease run: cd New\application; mvn clean javafx:run"
    exit 1
}

$classesDir = Join-Path $PSScriptRoot "New\application\build\classes"
if (-not (Test-Path $classesDir)) { New-Item -ItemType Directory -Path $classesDir -Force | Out-Null }

Copy-Item "New\application\src\main\resources\style.css" "$classesDir\style.css" -Force -ErrorAction SilentlyContinue

$sources = (Get-ChildItem -Path "New\application\src\main\java\in\carbon\core\*.java", "New\application\src\main\java\in\carbon\ui\*.java").FullName
& javac --module-path "$fxJars" --add-modules javafx.controls,javafx.fxml -d "$classesDir" $sources

& java --module-path "$fxJars" --add-modules javafx.controls,javafx.fxml -cp "$classesDir" in.carbon.ui.FootprintLensApp $args
