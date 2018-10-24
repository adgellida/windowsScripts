#### 026.runWPD

cd..
cd..
cd downloads

$url = 'https://wpd.app/get/latest.zip';
$output = 'latest.zip';

[Net.ServicePointManager]::SecurityProtocol = "Tls12, Tls11, Tls, Ssl3"
Invoke-WebRequest -Uri $url -OutFile $output

Expand-Archive -Force $output;

Remove-Item $output;

.\latest\WPD.exe