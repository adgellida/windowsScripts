@echo off

rem #### 011.runUltimateWindowsTweaker4

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command $source = 'https://www.thewindowsclub.com/downloads/UWT4.zip'; $destination = 'UWT4.zip'; [Net.ServicePointManager]::SecurityProtocol = \"Tls12, Tls11, Tls, Ssl3\"; Invoke-WebRequest $source -OutFile $destination;
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive UWT4.zip -DestinationPath UWT4; $file = 'UWT4\Ultimate Windows Tweaker 4.4.1\Ultimate Windows Tweaker 4.4.1.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file);
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item UWT4.zip"; exit;"
rem pause