@echo off

rem #### 013.runWindosUpdateMiniTool

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$source = 'www.adgellida.byethost7.com/files/wumt.zip'; $destination = 'wumt.zip'; Invoke-WebRequest $source -OutFile $destination;
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive wumt.zip -DestinationPath wumt; $file = 'wumt/wumt_x64.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file); exit;"
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item wumt.zip";
rem pause