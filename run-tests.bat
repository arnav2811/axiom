@echo off
setlocal
cd /d "%~dp0"

echo ============================================================
echo Footprint Lens — Run Tests
echo ============================================================

REM Try Maven first
where mvn >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo [INFO] Running tests with Maven...
    cd New\application
    mvn clean test
    goto :end
)

REM Try Maven wrapper
set MVN_WRAPPER=
for /f "delims=" %%i in ('dir /s /b "%USERPROFILE%\.m2\wrapper\dists\*mvn.cmd" 2^>nul') do set MVN_WRAPPER=%%i
if defined MVN_WRAPPER (
    echo [INFO] Using Maven wrapper: %MVN_WRAPPER%
    cd New\application
    "%MVN_WRAPPER%" clean test
    goto :end
)

echo [ERROR] Maven not found. Please install Maven 3.9+ and run: cd New\application ^&^& mvn clean test
pause
exit /b 1

:end
if %ERRORLEVEL% neq 0 (
    echo [WARNING] Tests had failures. Check output above.
    pause
) else (
    echo [SUCCESS] All tests passed.
    pause
)
