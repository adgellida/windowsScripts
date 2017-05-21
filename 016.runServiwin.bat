@echo off

rem #### 014.runProcessExplorer

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$source = 'http://www.nirsoft.net/utils/serviwin-x64.zip'; $destination = 'serviwin-x64.zip'; Invoke-WebRequest $source -OutFile $destination;
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive serviwin-x64.zip -DestinationPath serviwin-x64; $file = 'serviwin-x64\serviwin.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file); 
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item ProcessExplorer.zip"; exit;"
rem pause