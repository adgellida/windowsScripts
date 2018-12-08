$serviceName = "wsearch";
$serviceStatus = (get-service "$serviceName").Status;

if ($serviceStatus -eq "Running") {
    echo "Service is Running";
	echo "Running" > "WSearchStatus.txt";
}
else {
    #Could be Stopped, Stopping, Paused, or even Starting...
    echo "Service is $serviceStatus";
	echo "Not running" > "WSearchStatus.txt";
}