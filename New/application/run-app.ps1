# Footprint Lens Desktop Launcher (PowerShell)
# Run from: New\application
$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "Footprint Lens Desktop Application (JavaFX)"                  -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

$fxPath = "$env:USERPROFILE\.m2\repository\org\openjfx"
$fxJars = "$fxPath\javafx-base\23.0.1\javafx-base-23.0.1-win.jar;$fxPath\javafx-controls\23.0.1\javafx-controls-23.0.1-win.jar;$fxPath\javafx-graphics\23.0.1\javafx-graphics-23.0.1-win.jar;$fxPath\javafx-fxml\23.0.1\javafx-fxml-23.0.1-win.jar"

if (-not (Test-Path "$fxPath\javafx-base\23.0.1\javafx-base-23.0.1-win.jar")) {
    Write-Host "[INFO] JavaFX jars not found. Trying Maven..." -ForegroundColor Yellow
    $mvnCmd = Get-Command mvn -ErrorAction SilentlyContinue
    if (-not $mvnCmd) {
        $mvnCmd = Get-ChildItem "$env:USERPROFILE\.m2\wrapper\dists" -Recurse -Filter "mvn.cmd" -ErrorAction SilentlyContinue | Select-Object -First 1
        if ($mvnCmd) { $mvnCmd = $mvnCmd.FullName }
    }
    if ($mvnCmd) {
        & $mvnCmd -q clean javafx:run
        return
    }
    Write-Error "JavaFX libraries not found and Maven not available.`nPlease run: mvn clean javafx:run"
    exit 1
}

$classesDir = Join-Path $PSScriptRoot "build\classes"
if (-not (Test-Path $classesDir)) { New-Item -ItemType Directory -Path $classesDir -Force | Out-Null }

Copy-Item "src\main\resources\style.css" "$classesDir\style.css" -Force -ErrorAction SilentlyContinue

$sources = (Get-ChildItem -Path "src\main\java\in\carbon\core\*.java", "src\main\java\in\carbon\ui\*.java").FullName
& javac --module-path "$fxJars" --add-modules javafx.controls,javafx.fxml -d "$classesDir" $sources

& java --module-path "$fxJars" --add-modules javafx.controls,javafx.fxml -cp "$classesDir" in.carbon.ui.FootprintLensApp $args
