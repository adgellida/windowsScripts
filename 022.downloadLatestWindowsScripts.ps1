#### 022.downloadLatestWindowsScripts

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
$file = "C:\Program Files (x86)\winsys\chocoupdateok.txt"
} else {
$file = "C:\Program Files\winsys\chocoupdateok.txt"
}

Remove-Item $file

echo 'Downloading updated scripts. Please wait... Stage 1/3';

$url = 'https://codeload.github.com/adgellida/windowsScripts/zip/master';
$output = 'master.zip';

[Net.ServicePointManager]::SecurityProtocol = "Tls12, Tls11, Tls, Ssl3"
Invoke-WebRequest -Uri $url -OutFile $output

echo 'Cleaning old scripts. Please wait... Stage 2/3';

Remove-Item scripts -recurse;

echo 'Preparing scripts to be used. Please wait... Stage 3/3';

Expand-Archive master.zip -DestinationPath scripts;

New-Item -ItemType Directory -Force -Path downloads;

Remove-Item master.zip;