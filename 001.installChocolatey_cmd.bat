@echo off

rem #### 001.installChocolatey

rem #### install chocolatey - http://community.spiceworks.com/scripts/show/2602-chocolatey-nuget-install-command-line-method
rem #### All Windows versions support commenting a line and uncommenting another.

rem @powershell Write-Host "Installing Chocolatey, Nuget Package Explorer and ChocolateyGUI... Please wait"
rem @powershell Start-Sleep -s 3

rem #### for Windows Vista and upper (7, 8, 8.1, 10, etc) 
rem @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
rem #### for Windows XP
rem @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

@powershell Write-Host "All the processes has been realized. Enjoy it!"

rem cinst chocolateygui
rem cinst OuiGuiChocolatey
rem cinst ChocoPM.install -Pre
pause