actions
power: aNumber 
	self isPlugged
		ifFalse: [^ self].
	[self device power: aNumber] on: NotConnectedLego do: ["Nothing"].
	lastTimeSent := Time millisecondClockValue