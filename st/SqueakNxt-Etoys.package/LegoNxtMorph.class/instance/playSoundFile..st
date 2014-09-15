sound
playSoundFile: aString 
	nxt isConnected
		ifTrue: [nxt playSoundFile: aString, '.rso']