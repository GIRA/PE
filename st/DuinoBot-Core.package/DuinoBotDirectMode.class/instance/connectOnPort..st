connection
connectOnPort: aString
	self isConnected ifTrue: [^ self].
	('HID' match: aString)
		ifTrue: [self connectOnHIDPort: aString]
		ifFalse: [self connectOnSerialPort: aString].
	self isConnected
		ifTrue: [self controlFirmwareInstalled; startSteppingProcess]