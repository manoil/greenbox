@echo off

title=Green Box Auto Bat
mode con cols=40 lines=20
color 06
                                    
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
python greenbox.py

echo ---------------------------------------------------

:end
echo Type 1 to restart the program
echo or others to exit
set /p input=:
if "%input%"=="1" goto running