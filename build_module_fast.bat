:: @> hi there! I'm pretty honored to see you here,
::    please feel free to copy anything. -Greetings from Swyter
::   -------------------------------------------------------------

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
MODE CON: COLS=40

:init
@echo off
cls && color 71 && title [ ] swysdk -- building

:: this is to support paths with spaces and strange characters
set CD="!CD!"
set msyspp_params=-hide-tags -id-folder -hide-scripts
set PATH=""

:: specify what folders are included in the search path for scripts
set PYTHONPATH=%PYTHONPATH%;!CD:~1,-1!\ID;!CD:~1,-1!\Header;!CD:~1,-1!\Process;!CD:~1,-1!\Data;!CD:~1,-1!

builder\MS++\MS++.exe %msyspp_params%

title [X] swysdk -- finished
echo ______________________________
echo Script processing has ended.
echo Press any key to restart. . .
pause>nul
goto :init