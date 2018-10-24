#### 025.runOptimizer

cd..
cd..
cd downloads

$url = 'https://github.com/hellzerg/optimizer/releases/download/4.5/Optimizer-4.5.exe';
$output = 'Optimizer-4.5.exe';

[Net.ServicePointManager]::SecurityProtocol = "Tls12, Tls11, Tls, Ssl3"
Invoke-WebRequest -Uri $url -OutFile $output

.\Optimizer-4.5.exe