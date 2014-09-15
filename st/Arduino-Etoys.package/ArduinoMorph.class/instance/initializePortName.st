initialize-release
initializePortName
	| availablePorts |
	availablePorts := PESerialPort availablePorts.
	(availablePorts includes: self class lastPortName)
		ifFalse: [self class lastPortName: availablePorts first].
	portName := self class lastPortName