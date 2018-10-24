@echo off

rem #### 013.runWindosUpdateMiniTool

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "C:\ProgramData\chocolatey\choco.exe install -y -force wumt; C:\tools\wumt\wumt.exe"