$serviceName = "wuauserv";
$serviceStatus = (get-service "$serviceName").Status;

if ($serviceStatus -eq "Running") {
    echo "Service is Running";
	echo "Running" > "WuauservStatus.txt";
}
else {
    #Could be Stopped, Stopping, Paused, or even Starting...
    echo "Service is $serviceStatus";
	echo "Not running" > "WuauservStatus.txt";
}