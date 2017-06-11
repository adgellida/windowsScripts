@echo off

rem #### 014.runProcessExplorer

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "C:\ProgramData\chocolatey\choco.exe install -y -force adwcleaner; C:\ProgramData\chocolatey\bin\adwcleaner.exe"