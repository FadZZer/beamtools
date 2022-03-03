@echo off
:start
cls
type menu2.txt
color f0

if "%sst-input%" equ "about" (cls
color f0
insertbmp /p:"about.bmp" /x:0 /y:-6
set sst-input=idle
pause > nul
goto start
)


set sst-input=idle
set /p sst-input=
if "%sst-input%" equ "exit" goto exit

if "%sst-input%" equ "back" (
start install
exit
)



goto start
:exit
color 0f
set sst-ver=
set sst-dir=
cls
set sst-shutdown=fine
if not "%sst-mf%" equ "0" set sst-shutdown=bad
if "%sst-restart%" equ "1" call sstools
