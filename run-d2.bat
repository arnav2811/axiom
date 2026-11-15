@echo off
setlocal
cd /d "%~dp0"

echo ============================================================
echo Starting Footprint Lens (D2 Low-Fidelity Interactive Prototype)...
echo ============================================================

set HTML_FILE=%~dp0New\D2\prototype\index.html

where python >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo [INFO] Starting local HTTP server on port 8080 in background...
    start /min "FootprintLens_D2_Server" python -m http.server 8080 --directory New\D2\prototype
    timeout /t 1 >nul
    start "" "http://localhost:8080"
) else (
    echo [INFO] Python not found. Opening prototype directly in browser...
    start "" "%HTML_FILE%"
)
