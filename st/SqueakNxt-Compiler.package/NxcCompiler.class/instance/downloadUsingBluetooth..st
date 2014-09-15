compiling
downloadUsingBluetooth: portName 
	"Compiles the program and downloads it using the bluetooth on the specified device name. Returns a collection of NbcErrors"
	^ self execute: (Nbc forThisPlatform portName: portName; useBluetooth; downloadProgramAndRun)