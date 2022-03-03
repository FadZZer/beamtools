:start
@echo off
color 0f
cls
echo Choose option to do:
echo.
echo Use arrow keys to navigate and press ENTER to confirm, or click a button with your mouse.
echo.
cmdmenusel.exe 0FF0 "     Restart NirCMD" "     Boot into safe mode"
set sst-bsd=%errorlevel%
set errorlevel=


if "%sst-bsd%" equ "1" (
	start restarting
)

if "%sst-bsd%" equ "2" (
start safe
exit
)