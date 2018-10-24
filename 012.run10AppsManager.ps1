#### 012.run10AppsManager

cd..
cd..
cd downloads

$url = 'https://doc-0k-8c-docs.googleusercontent.com/docs/securesc/11c6obe2cu2h77a0tdds5vm2b0smgsog/ihtngna8l2tft5pkca5rd4lcijcm6qrp/1540418400000/16071247937085431459/16071247937085431459/1eatZjfQmMOSBKERmLr6k6MhknA-xE-Ya?e=download&nonce=nc5j3bb556faq&user=16071247937085431459&hash=3oijvmg16ql2tvodbsb712qii5lep532'
$output = '10amW10.zip';

[Net.ServicePointManager]::SecurityProtocol = "Tls12, Tls11, Tls, Ssl3"
Invoke-WebRequest -Uri $url -OutFile $output

Expand-Archive -Force $output;

Remove-Item $output;

& '.\10amW10\10AppsManager v2\10AppsManager.exe'