@echo off
::快速的追加一个host规则  -- by lovefc
color 1f
title 添加host--by lovefc
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
:ip
cls
set /p ip=请输入ip:
if not defined ip (
echo ip不能为空。。。
set /p ip=请输入规则:
)  else (
GOTO :ym
)
GOTO :ip
:ym
set /p ym=请输入域名:
if not defined ym (
echo 域名不能为空。。。
set /p ym=请输入域名:
) else (
call :whost %ip%  %ym%
cls
call :ip
)
GOTO :ym
:whost
echo.%1 %2>>%SystemRoot%\System32\drivers\etc\hosts
goto :eof