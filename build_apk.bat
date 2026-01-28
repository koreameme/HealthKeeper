@echo off
setlocal enabledelayedexpansion

echo Building HealthKeeper APK...
echo.

REM Android Studio Gradle 경로
set GRADLE_HOME=C:\Program Files\Android\Android Studio\gradle\gradle-8.0

REM 빌드 실행
echo Executing: %GRADLE_HOME%\bin\gradle.bat assembleRelease
call "%GRADLE_HOME%\bin\gradle.bat" assembleRelease

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✓ Build successful!
    echo APK location: app\build\outputs\apk\release\app-release.apk
) else (
    echo.
    echo ✗ Build failed with exit code %ERRORLEVEL%
)

pause
