#### 022.downloadLatestWindowsScripts

echo 'Downloading updated scripts. Please wait... Stage 1/3'; $down = New-Object System.Net.WebClient; $url = 'https://github.com/adgellida/windowsScripts/archive/master.zip'; $file = 'master.zip'; $down.DownloadFile($url,$file);
echo 'Cleaning old scripts. Please wait... Stage 2/3'; Remove-Item scripts -recurse;
echo 'Preparing scripts to be used. Please wait... Stage 3/3'; Expand-Archive master.zip -DestinationPath scripts; New-Item -ItemType Directory -Force -Path downloads; Remove-Item master.zip;