@echo off
mode con cols=40 lines=20
color 06
                                    
echo ============GitHub Green Box============
pause

:running
python greenbox.py

echo ---------------------------------------------------

:end
set /p input=Type 1 to restart the program, or others to exit: 
if "%input%"=="1" goto running