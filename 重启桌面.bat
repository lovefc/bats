@echo off
color 1f
title 重启 Explorer -- by yu2n
set/p "p=重启 Explorer  "<nul & pause
Call :_RestartExplorer
echo 完成！
pause

:: 重启 Explorer
goto :eof
:_RestartExplorer
(
  echo Dim arrURL^(^), strURL, oShell, oWin, n
  echo n = -1
  echo Set oShell = CreateObject^("Shell.Application"^)
  echo For Each oWin In oShell.Windows
  echo   If Instr^(1, oWin.FullName, "\explorer.exe", vbTextCompare^) Then
  echo     n = n + 1
  echo     ReDim Preserve arrURL^(n^)
  echo     arrURL^(n^) = oWin.LocationURL
  echo   End If
  echo Next
  echo CreateObject^("WScript.Shell"^).run "tskill explorer", 0, True
  echo For Each strURL In arrURL
  echo   oShell.Explore strURL
  echo Next
)>"%temp%\RestartExplorer.vbs"
  CScript //NoLogo "%temp%\RestartExplorer.vbs"
  del /q /f "%temp%\RestartExplorer.vbs"
  goto :eof