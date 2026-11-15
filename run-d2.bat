@echo off
setlocal
cd /d "%~dp0"

echo ============================================================
echo Starting Footprint Lens (D2 Low-Fidelity Interactive Prototype)...
echo ============================================================

set HTML_FILE=%~dp0New\D2\prototype\index.html

where python >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo Starting local web server on port 8080...
    start "" http://localhost:8080
    python -m http.server 8080 --directory New\D2\prototype
) else (
    echo Opening prototype directly in your default web browser...
    start "" "%HTML_FILE%"
)
