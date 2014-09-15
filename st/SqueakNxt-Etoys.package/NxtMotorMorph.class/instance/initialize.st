initialize-release
initialize
	super initialize.
	automaticBrake := true.
	lastTimeSent := Time millisecondClockValue
	