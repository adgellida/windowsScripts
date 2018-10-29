#### 027.chocoinstall

#echo 'Checking winsys app updates with chocolatey ...';

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Stop-Process -processname winsys
chocolatey upgrade -y winsys
#choco install winsys -f -y --version 2018.10.26
echo chocoupdateok > chocoupdateok.txt

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
$run = & "C:\Program Files (x86)\winsys\winsys.exe"
} else {
$run = & "C:\Program Files\winsys\winsys.exe"
}

$run