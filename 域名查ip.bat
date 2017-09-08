@echo off
::查询域名ip,自动复制到粘贴板  -- by lovefc
color 1f
title 域名查ip--by lovefc
:inpu
set /p ym=    请输入域名（不要加http https）:
call :get_ip %ym%
echo ip地址：%wzip% 已自动复制到粘贴板 ctrl+v
mshta vbscript:clipboarddata.setdata("text","%wzip%")(close)
goto :inpu
:get_ip
ping %1 -4 -n 1 |find /i "ping">%1.txt
for /f "tokens=2 delims=[]" %%b in (%1.txt) do set wzip=%%b
del /f /q %1.txt
goto :eof