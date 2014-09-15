actions
startProgram: aString 
	nxt isConnected
		ifTrue: [nxt startProgram: aString]