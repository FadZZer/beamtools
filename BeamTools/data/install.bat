@echo off
set nir-ver=4.0
title cmddv39 %nir-ver%
set sst-dir="%cd%"
set sst-ver=2.0
if not "%sst-restart%" equ "1" (cls
)
color 3F
mode 80,10
type welcome.txt
pause >nul
mode 100,20
:start
cls
type menu.txt
color 3F
if "%sst-input%" equ "about" (cls
color 3F
mode 100,20
echo nothing.. press any key to kill ur mo- i mean to go back

set sst-input=idle
pause > nul
goto start
)
if "%sst-input%" equ "ab" (cls
color 3F
mode 100,20
echo nothing.. press any key to kill ur mo- i mean to go back

set sst-input=idle
pause > nul
goto start
)


set sst-input=idle
set /p sst-input=
if "%sst-input%" equ "exit" goto exit
if "%sst-input%" equ "safemode" (cls
echo Pogram cannot boot directly into safe mode, so it will boot into reboot menu.
pause
start rebootmenu.cmd
exit)
if "%sst-input%" equ "restart" (
goto restart
)
if "%sst-input%" equ "type" (
start morefunc
goto exit
)

if "%sst-input%" equ "changelog" (
cls
type !changelog.txt
echo.
pause
)

if "%sst-input%" equ "beamtools" (
cls
echo You are not is safe mode stupid idiot so i will do it automatically for u, you lazy ass
echo.
echo Press any key to boot into safemode
pause >nul
start rebootmenu
goto exit
)


if "%sst-input%" equ "install" (
start downl
exit
)
if "%sst-input%" equ "i" (
start downl
exit
)
echo command not found
pause
goto start
goto exit
)
:exit(
exit
)

:restart
start restarting
exit

