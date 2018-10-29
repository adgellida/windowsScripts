#### 028
cd..
cd..
cd downloads

$url = 'http://www.greatissoftware.com/stopupdates10.zip'
$output = 'stopupdates10.zip';

[Net.ServicePointManager]::SecurityProtocol = "Tls12, Tls11, Tls, Ssl3"
Invoke-WebRequest -Uri $url -OutFile $output

Expand-Archive -Force $output;

Remove-Item $output;

& '.\stopupdates10\stopupdates10setup.exe'