
python "D:\Developments\Git\greenbox\greenbox.py" greenbox.py
pause

@echo off

echo                                      Git Auto Upload
echo ===================================================================================
echo.

::set /p change=请输入Git更新变动：
echo.
cd "D:\Developments\Git\greenbox"

git pull
git add .
git commit -m upadtes
git push

echo.
echo ===================================================================================
echo                                      Up to date
echo.

pause