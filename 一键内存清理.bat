@echo off
::清除所有超过100m占用的软件内存(除了桌面)，并不确保都能杀掉！ -- by lovefc
color 1f
title 清理内存 -- by lovefc
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
echo **********
echo  内存清理
echo **********
:cleancpu
set /a kilobytes=100*1024
tasklist /fi "memusage gt %kilobytes%" /nh /fo csv>task.txt
for /f "delims=," %%i in (task.txt) do if not "%%~i"=="explorer.exe" ( taskkill /f /t /im %%~i )
echo 清理完成！
del /f /q task.txt
pause
goto :cleancpu