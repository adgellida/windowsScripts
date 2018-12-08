$serviceName = "wuauserv";
$serviceShowName = "Windows Update";
$serviceStatus = (get-service "$serviceName").Status;

if ($serviceStatus -eq "Running") {
    echo "$serviceShowName is Running";
	echo "Running" > "WuauservStatus.txt";
}
else {
    #Could be Stopped, Stopping, Paused, or even Starting...
    echo "$serviceShowName is $serviceStatus";
	echo "Not running" > "WuauservStatus.txt";
}