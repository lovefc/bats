@echo off
::��ѯ����ip,�Զ����Ƶ�ճ����  -- by lovefc
color 1f
title ������ip--by lovefc
:inpu
set /p ym=    ��������������Ҫ��http https��:
call :get_ip %ym%
echo ip��ַ��%wzip% ���Զ����Ƶ�ճ���� ctrl+v
mshta vbscript:clipboarddata.setdata("text","%wzip%")(close)
goto :inpu
:get_ip
ping %1 -4 -n 1 |find /i "ping">%1.txt
for /f "tokens=2 delims=[]" %%b in (%1.txt) do set wzip=%%b
del /f /q %1.txt
goto :eof