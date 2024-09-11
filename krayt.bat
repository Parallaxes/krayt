@echo off
setlocal

rem Get the directory of the batch file
set "SCRIPT_DIR=%~dp0"

rem Construct the path to the krayt.py script
set "SCRIPT_PATH=%SCRIPT_DIR%..\krayt\krayt.py"

rem Run the Python script
python "%SCRIPT_PATH%" %*

endlocal