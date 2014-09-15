initialize-release
initializePortName
	| availablePorts |
	availablePorts := PESerialPort availablePortsForNxt.
	(availablePorts includes: self class lastPortName)
		ifFalse: [self class lastPortName: availablePorts first].
	portName := self class lastPortName