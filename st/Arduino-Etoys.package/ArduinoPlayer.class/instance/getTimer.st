slots
getTimer
	^ self getIsConnected
		ifTrue: [super getTimer]
		ifFalse: [0]