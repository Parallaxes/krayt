@echo off
REM Function to install dependencies
:install_dependencies
echo Installing dependencies...
pip install -r requirements.txt
goto :eof

REM Function to add krayt to PATH
:add_to_path
echo Adding krayt to system PATH...
set "SCRIPT_DIR=%~dp0"
setx PATH "%PATH%;%SCRIPT_DIR%"
echo krayt has been added to your PATH. You can now use the 'krayt' command.
goto :eof

REM Install dependencies
call :install_dependencies

REM Prompt for approval to add krayt to PATH
set /p choice="Do you want to add 'krayt' to your system PATH? (y/n): "
if /i "%choice%"=="y" (
    call :add_to_path
) else if /i "%choice%"=="n" (
    echo You chose not to add 'krayt' to the PATH. You can still run it using 'python krayt.py'.
) else (
    echo Invalid choice. Please run the script again and choose y or n.
)
pause