sound
playTone: freqNumber 
	nxt isConnected
		ifTrue: [nxt playTone: freqNumber]