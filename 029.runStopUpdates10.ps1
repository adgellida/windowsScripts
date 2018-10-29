#### 029

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
$run = & "C:\Program Files (x86)\StopUpdates10\StopUpdates10.exe"
} else {
$run = & "C:\Program Files\StopUpdates10\StopUpdates10.exe"
}

$run