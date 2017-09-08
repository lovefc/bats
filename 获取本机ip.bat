@echo off
color 1f
title  获取本机ip -- by lovefc
ipconfig |find "IPv4 地址">taskip.txt
for /f "tokens=2 delims=:" %%i in (taskip.txt) do set ip=%%i
echo 本机ip地址：%ip% 已自动复制到粘贴板 ctrl+v
echo 按任意键退出！
mshta vbscript:clipboarddata.setdata("text","%ip%")(close)
del taskip.txt /q
pause>nul
exit


