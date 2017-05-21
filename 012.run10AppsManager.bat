@echo off

rem #### 012.run10AppsManager

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$source = 'http://www.thewindowsclub.com/downloads/10amW10.zip'; $destination = '10amW10.zip'; Invoke-WebRequest $source -OutFile $destination;
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive 10amW10.zip -DestinationPath 10amW10; $file = '10amW10\10AppsManager v2\10AppsManager.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file); 
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item 10amW10.zip"; exit;"
rem pause