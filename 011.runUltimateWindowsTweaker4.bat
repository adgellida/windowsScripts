@echo off

rem #### 011.runUltimateWindowsTweaker4

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$source = 'http://www.thewindowsclub.com/downloads/UWT4.zip'; $destination = 'UWT4.zip'; Invoke-WebRequest $source -OutFile $destination;
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive UWT4.zip -DestinationPath UWT4; $file = 'UWT4\Ultimate Windows Tweaker 4.2.3\Ultimate Windows Tweaker 4.2.3.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file);
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item UWT4.zip"; exit;"
rem pause