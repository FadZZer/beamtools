set nir-ver=4.0
:start
@echo off
color 9F
cls
echo SAFE MODE (nircmd ver %nir-ver%)
echo.
echo Use arrow keys to navigate and press ENTER to confirm, or click a button with your mouse.
echo.
cmdmenusel.exe 9FF9 "     >>Boot into normal mode" "     >>Install Beamng" "     >>Make error" "     >>About safe mode" "     >>Exit" "     >>BeamNG.Drive Multiplayer"
set sst-bsd=%errorlevel%
set errorlevel=


if "%sst-bsd%" equ "1" (
	start install
	exit
)

if "%sst-bsd%" equ "2" (
	start Ds
	exit
)

if "%sst-bsd%" equ "3" (
	start error
	exit
)

if "%sst-bsd%" equ "4" (
	cls
	echo.
	echo              SAFE MODE Boot means it closes normal nircmd and boots into safe mode.
	echo              safe mode is used to remove viruses, not getting viruses and getting not working programs to work.
	echo.
	echo.
	echo.
	pause
	goto start
)

if "%sst-bsd%" equ "5" (
	exit
)

if "%sst-bsd%" equ "6" (
	cd bmip
	Cls
	echo.
	echo.
	echo.
	echo                 BEAMNG will be launched automatically.
	echo                 Press any key to run BeamMP - Multiplayer for beamng [not my program]
	pause >nul
	start BeamMP-Launcher.exe
	exit
)