actions
stopProgram
	nxt isConnected
		ifTrue: [nxt stopProgram]