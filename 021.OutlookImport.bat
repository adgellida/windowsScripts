@echo off

rem #### 021.OutlookImport
cd..
cd..
reg import OutlookProfile\OutlookWinsys.reg
mkdir %localappdata%\Microsoft\Outlook
copy OutlookData\* %localappdata%\Microsoft\Outlook