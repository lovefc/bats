@echo off
::������г���100mռ�õ�����ڴ�(��������)������ȷ������ɱ���� -- by lovefc
color 1f
title �����ڴ� -- by lovefc
echo **********
echo  �ڴ�����
echo **********
:cleancpu
set /a kilobytes=100*1024
tasklist /fi "memusage gt %kilobytes%" /nh /fo csv>task.txt
for /f "delims=," %%i in (task.txt) do if not "%%~i"=="explorer.exe" ( taskkill /f /t /im %%~i )
echo ������ɣ�
del /f /q task.txt
pause
goto :cleancpu