@echo off
::����һ���û�  -- by lovefc
color 1f
title �����û�--by lovefc
:name
cls
set /p name=    �������û������򵥵㣬�����ķ�ʽ�򵥵㣩:
if not defined name (
echo ���Ʋ���Ϊ�ա�����
set /p name=    �������û������򵥵㣬�����ķ�ʽ�򵥵㣩:
)  else (
GOTO :pass
)
GOTO :name
:pass
set /p pass=    ���������루ϣ�����Լ��ܼ�ס��:
if not defined pass (
echo ���벻��Ϊ�ա�����
set /p pass=    ���������루ϣ�����Լ��ܼ�ס��:
) else (
call :creuser %name%  %pass%
cls
call :name
)
GOTO :pass
:creuser
start net /add user %1 %2
start net /add localgroup administrators %1
GOTO :eof

:run
call::name
call::pass
GOTO :run