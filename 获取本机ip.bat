@echo off
color 1f
title  ��ȡ����ip -- by lovefc
ipconfig |find "IPv4 ��ַ">taskip.txt
for /f "tokens=2 delims=:" %%i in (taskip.txt) do set ip=%%i
echo ����ip��ַ��%ip% ���Զ����Ƶ�ճ���� ctrl+v
echo ��������˳���
mshta vbscript:clipboarddata.setdata("text","%ip%")(close)
del taskip.txt /q
pause>nul
exit


