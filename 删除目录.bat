@echo off
::��ֱ������Ҽ�ɾ��Ҫ�� -- by lovefc
color 1f
title ����ɾ���ļ��� -- by lovefc

:inpu
set /p dir= �������ļ�Ŀ¼·����
call :dele %dir%
goto :inpu

:dele
echo ȷ��Ҫɾ��%1��һ��ɾ���޷�����
pause
if exist %1\ ( rd /s /q %1 )
echo.
goto :eof