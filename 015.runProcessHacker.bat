@echo off

rem #### 014.runProcessExplorer

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$source = 'https://github.com/processhacker2/processhacker2/releases/download/v2.39/processhacker-2.39-bin.zip'; $destination = 'processhacker-2.39-bin.zip'; [Net.ServicePointManager]::SecurityProtocol = \"Tls12, Tls11, Tls, Ssl3\"; Invoke-WebRequest $source -OutFile $destination;
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive processhacker-2.39-bin.zip -DestinationPath processhacker-2.39-bin; $file = 'processhacker-2.39-bin\x64\ProcessHacker.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file); 
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item ProcessExplorer.zip"; exit;"
rem pause