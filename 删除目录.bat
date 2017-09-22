@echo off
::比直接鼠标右键删除要快 -- by lovefc
color 1f
title 快速删除文件夹 -- by lovefc

:inpu
set /p dir= 请输入文件目录路径：
call :dele %dir%
goto :inpu

:dele
echo 确定要删除%1吗？一旦删除无法更改
pause
if exist %1\ ( rd /s /q %1 )
echo.
goto :eof