@echo off
color f0
if not "%sst-restart%" equ "1" (cls
mode 96,25
echo.
echo.
echo.
echo.
insertbmp /p:"beamtools.bmp" /x:0 /y:-6
echo.
echo press a key
pause >nul
)
echo.
echo Downloading ZIP from steamunlocked
timeout /t 2 >nul /nobreak
echo ZIP downloaded (2.015s)
echo Checking viruses...
timeout /t 1 >nul /nobreak
echo no viruses :)
echo starting download torrent
timeout /t 2 >nul /nobreak
echo FAILED TO DOWNLOAD - YOU ARE NOT IN SAFE MODE!!!!
pause
exit