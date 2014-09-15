compiling
downloadUsingUsb
	"Compiles the program and downloads it using the usb cable. Returns a collection of NbcErrors"
	^ self execute: (Nbc forThisPlatform portName: 'usb'; downloadProgramAndRun)