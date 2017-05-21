@echo off

rem #### 014.runProcessExplorer

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$source = 'https://download.sysinternals.com/files/ProcessExplorer.zip'; $destination = 'ProcessExplorer.zip'; Invoke-WebRequest $source -OutFile $destination;
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive ProcessExplorer.zip -DestinationPath ProcessExplorer; $file = 'ProcessExplorer\procexp64.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file); 
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item ProcessExplorer.zip"; exit;"
rem pause