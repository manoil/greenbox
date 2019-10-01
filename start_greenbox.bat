@echo off

title=Green Box Auto Bat
mode con cols=40 lines=20
color 02
                                    
echo ============GitHub Green Box============
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
echo 
set /p input=Type "1" to restart the program:
if "%input%"=="1" goto running