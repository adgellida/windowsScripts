@echo off

rem #### 020.OutlookExport
cd..
cd..
mkdir OutlookData
mkdir OutlookProfile
reg export HKEY_CURRENT_USER\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Windows Messaging Subsystem\\Profiles OutlookData\OutlookWinsys.reg
rem reg export "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\TokenBroker" OutlookProfile\OutlookWinsys.reg
copy %localappdata%\Microsoft\Outlook\* OutlookData