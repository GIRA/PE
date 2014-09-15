initialize
initializeSubmorphs
	isConnected
		ifTrue: [self initializeSubmorphsConnected]
		ifFalse: [self initializeSubmorphsDisconnected]