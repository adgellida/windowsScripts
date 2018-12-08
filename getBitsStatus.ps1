$serviceName = "bits";
$serviceShowName = "BITS";
$serviceStatus = (get-service "$serviceName").Status;

if ($serviceStatus -eq "Running") {
    echo "serviceShowName is Running";
	echo "Running" > "BitsStatus.txt";
}
else {
    #Could be Stopped, Stopping, Paused, or even Starting...
    echo "serviceShowName is $serviceStatus";
	echo "Not running" > "BitsStatus.txt";
}