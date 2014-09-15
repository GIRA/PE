motor actions
floatMotorOnPort: aNumber 
	self controlConnection.
	self dcSetOutputStatePort: aNumber - 1
		power: 0
		mode: 0
		regulation: 0
		turnRatio: 0
		runState: 0
		tachoLimit: 0