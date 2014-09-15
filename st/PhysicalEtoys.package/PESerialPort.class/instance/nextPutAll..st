input/output
nextPutAll: aByteArray 
	portNumber isNil ifTrue: [^ self error: 'The serial port must be open'].
	^ self plugin writePort: portNumber data: aByteArray