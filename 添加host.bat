@echo off
::���ٵ�׷��һ��host����  -- by lovefc
color 1f
title ���host--by lovefc
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
:ip
cls
set /p ip=������ip:
if not defined ip (
echo ip����Ϊ�ա�����
set /p ip=���������:
)  else (
GOTO :ym
)
GOTO :ip
:ym
set /p ym=����������:
if not defined ym (
echo ��������Ϊ�ա�����
set /p ym=����������:
) else (
call :whost %ip%  %ym%
cls
call :ip
)
GOTO :ym
:whost
echo.%1 %2>>%SystemRoot%\System32\drivers\etc\hosts
goto :eof