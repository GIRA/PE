system startup
startUp
	"If we open this image in windows, replace the squeak serial port. Otherwise, reinstall original SerialPort class"
	SmalltalkImage current platformName = 'Win32'
		ifTrue: [self replaceSqueakSerialPort]
		ifFalse: [self reinstallSqueakSerialPort]