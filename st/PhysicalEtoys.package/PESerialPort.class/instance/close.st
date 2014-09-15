open/close
close
	portNumber isNil ifTrue: [^ self].
	self plugin closePort: portNumber.
	portNumber := nil