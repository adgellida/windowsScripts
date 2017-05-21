@echo off

rem #### 013.runWindosUpdateMiniTool

cd..
cd..
cd downloads
@powershell -NoProfile -ExecutionPolicy Bypass -Command "$source = 'https://doc-0o-88-docs.googleusercontent.com/docs/securesc/11c6obe2cu2h77a0tdds5vm2b0smgsog/jlk86sto3lfiq1pagkredvvhsv4mu91u/1495267200000/02572933763160398265/16071247937085431459/0BwJH2CazcjsINFZFc1pVdk9mNHM?e=download&nonce=p29mmovmg73k4&user=16071247937085431459&hash=a5e6sccniu7ogfqa016gme6jktq838k4'; $destination = 'wumt.zip'; Invoke-WebRequest $source -OutFile $destination;
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive v20.12.2016.zip -DestinationPath v20.12.2016; $file = 'v20.12.2016/wumt_x64.exe'; $exec = New-Object -com shell.application; $exec.shellexecute($file); exit;"
rem @powershell -NoProfile -ExecutionPolicy Bypass -Command "Remove-Item wumt_v20.12.2016.zip";
rem pause