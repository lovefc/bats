@echo off
::创建一个用户  -- by lovefc
color 1f
title 创建用户--by lovefc
:name
cls
set /p name=    请输入用户名（简单点，起名的方式简单点）:
if not defined name (
echo 名称不能为空。。。
set /p name=    请输入用户名（简单点，起名的方式简单点）:
)  else (
GOTO :pass
)
GOTO :name
:pass
set /p pass=    请输入密码（希望你自己能记住）:
if not defined pass (
echo 密码不能为空。。。
set /p pass=    请输入密码（希望你自己能记住）:
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