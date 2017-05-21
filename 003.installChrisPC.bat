@echo off

rem #### 003.installChrisPC

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$down = New-Object System.Net.WebClient; $url = 'http://www.chris-pc.com/chrisdownload.php?action=count&id=31'; $file = 'setup_chrispc_wei.exe'; $down.DownloadFile($url,$file); $exec = New-Object -com shell.application; $exec.shellexecute($file); exit;"
rem pause