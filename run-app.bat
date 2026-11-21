@echo off
setlocal
cd /d "%~dp0"

echo ============================================================
echo Footprint Lens v1.0.0 — Release Candidate (D6)
echo ============================================================
echo.
echo Option 1: Maven (recommended)
echo Option 2: Direct javac
echo.

REM Try Maven first (preferred)
where mvn >nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo [INFO] Using Maven to build and run...
    cd New\application
    mvn -q clean javafx:run
    goto :end
)

REM Fallback: check Maven wrapper
set MVN_WRAPPER=
for /f "delims=" %%i in ('dir /s /b "%USERPROFILE%\.m2\wrapper\dists\*mvn.cmd" 2^>nul') do set MVN_WRAPPER=%%i
if defined MVN_WRAPPER (
    echo [INFO] Using Maven wrapper: %MVN_WRAPPER%
    cd New\application
    "%MVN_WRAPPER%" -q clean javafx:run
    goto :end
)

REM Fallback: manual javac
echo [INFO] Maven not found. Using direct javac compilation...
set FX_PATH=%USERPROFILE%\.m2\repository\org\openjfx
set FX_JARS=%FX_PATH%\javafx-base\23.0.1\javafx-base-23.0.1-win.jar;%FX_PATH%\javafx-controls\23.0.1\javafx-controls-23.0.1-win.jar;%FX_PATH%\javafx-graphics\23.0.1\javafx-graphics-23.0.1-win.jar;%FX_PATH%\javafx-fxml\23.0.1\javafx-fxml-23.0.1-win.jar

if not exist "%FX_PATH%\javafx-base\23.0.1\javafx-base-23.0.1-win.jar" (
    echo [ERROR] JavaFX libraries not found at: %FX_PATH%
    echo Please run: cd New\application ^&^& mvn clean javafx:run
    pause
    exit /b 1
)

set CP=New\application\build\classes
if not exist "%CP%" mkdir "%CP%"
copy /Y "New\application\src\main\resources\style.css" "%CP%\style.css" >nul 2>&1

javac --module-path "%FX_JARS%" --add-modules javafx.controls,javafx.fxml -d "%CP%" New\application\src\main\java\in\carbon\core\*.java New\application\src\main\java\in\carbon\ui\*.java

java --module-path "%FX_JARS%" --add-modules javafx.controls,javafx.fxml -cp "%CP%" in.carbon.ui.FootprintLensApp %*

:end
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Application exited with error code %ERRORLEVEL%.
    pause
)
