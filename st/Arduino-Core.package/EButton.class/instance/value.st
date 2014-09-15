accessing
value
	self controlAttaching ; reconfigureIfNecessary .
	^ pins first isDigital
		ifTrue: [pins first value]
		ifFalse: [(pins first value / 1023) rounded]
