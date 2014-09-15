actions
playTone: freqNumber duration: milliseconds
	freqNumber < 0 ifTrue: [^ self].
	protocol playTone: freqNumber rounded duration: milliseconds rounded
