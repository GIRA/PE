accessing
portName
	^ self arduinoType isHID
		ifTrue: [#hid]
		ifFalse: [super portName]