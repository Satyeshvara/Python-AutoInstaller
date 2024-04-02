@echo off
set PYTHON_VERSION=3.10.4
set PYTHON_INSTALLER_URL=https://www.python.org/ftp/python/%PYTHON_VERSION%/python-%PYTHON_VERSION%-amd64.exe

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

echo [Python %PYTHON_VERSION%] Downloading ...
bitsadmin /transfer "Python %PYTHON_VERSION%" %PYTHON_INSTALLER_URL% "%DOWNLOADS_DIR%\python-%PYTHON_VERSION%-amd64.exe"

echo.
echo [Python %PYTHON_VERSION%] Installing ...
"%DOWNLOADS_DIR%\python-%PYTHON_VERSION%-amd64.exe" /quiet InstallAllUsers=1 PrependPath=1 Include_launcher=0

echo.
echo Cleaning up ...
del "%DOWNLOADS_DIR%\python-%PYTHON_VERSION%-amd64.exe"

echo.
echo Python installation completed!

pause >nul