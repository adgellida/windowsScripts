@echo off

rem #### 002.runDriverPackOnline

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$down = New-Object System.Net.WebClient; $url = 'http://download.drp.su/17-online/DriverPack-17-Online.exe'; $file = 'DriverPack.exe'; $down.DownloadFile($url,$file); $exec = New-Object -com shell.application; $exec.shellexecute($file); exit;"
rem pause