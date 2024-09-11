@echo off
REM Function to install dependencies
:install_dependencies
echo Installing dependencies...
pip install --user -r requirements.txt
goto :eof

REM Function to add krayt to PATH
:add_to_path
echo Adding krayt to system PATH...
set "SCRIPT_DIR=%~dp0"
REM Check if the PATH already contains the SCRIPT_DIR
echo %PATH% | find /i "%SCRIPT_DIR%" >nul
if %errorlevel%==0 (
    echo The script directory is already in the PATH.
) else (
    setx PATH "%PATH%;%SCRIPT_DIR%"
    echo krayt has been added to your PATH. You can now use the 'krayt' command.
)
goto :eof

REM Install dependencies
call :install_dependencies

REM Add krayt to PATH
call :add_to_path

pause