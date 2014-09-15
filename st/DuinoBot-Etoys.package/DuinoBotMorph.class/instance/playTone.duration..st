sound
playTone: freq duration: dur
	self isConnected
		ifTrue: [arduino protocol playTone: freq duration: dur pin: 23]