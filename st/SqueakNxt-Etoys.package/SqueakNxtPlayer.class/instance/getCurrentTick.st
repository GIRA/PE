timer
getCurrentTick
	(self getIsConnected and: [self isUsingCompiledMode not])
		ifFalse: [self resetTimer. ^0].
	
	^ Time millisecondClockValue - self firstTick