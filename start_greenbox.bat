@echo off

title=Green Box Auto Bat
mode con cols=60 lines=30
color 02

echo ======================GitHub Green Box======================
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause

:running
cls
python greenbox.py

:end
set /p input=Type "1" to restart the program:
if "%input%"=="1" goto running