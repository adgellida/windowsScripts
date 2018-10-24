#### 011.runUltimateWindowsTweaker4
#https://www.freewarefiles.com/Ultimate-Windows-Tweaker-Download-Page-46341.html
cd..
cd..
cd downloads

$url = 'https://download1608.mediafire.com/1ia9yvwlj8tg/81lah3qcy710q72/UWT4.zip'
$output = 'UWT4.zip';

[Net.ServicePointManager]::SecurityProtocol = "Tls12, Tls11, Tls, Ssl3"
Invoke-WebRequest -Uri $url -OutFile $output

Expand-Archive -Force $output;

Remove-Item $output;

& '.\UWT4\Ultimate Windows Tweaker 4.4.1\Ultimate Windows Tweaker 4.4.1.exe'