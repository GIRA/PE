sound
playTone: freqNumber duration: aNumber
	nxt isConnected
		ifTrue: [nxt playTone: freqNumber duration: aNumber]