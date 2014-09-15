connection
connectOnPort: aString
	self isConnected ifTrue: [^ self].
	connection := NxtConnection onPort: aString.
	self isConnected
		ifTrue: [self startSteppingProcesses]