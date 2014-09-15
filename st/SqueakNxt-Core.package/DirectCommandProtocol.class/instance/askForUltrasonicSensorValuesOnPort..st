asking
askForUltrasonicSensorValuesOnPort: aNumber 
	| portNumber t timeout |
	portNumber := aNumber - 1.
	self
		dcLowSpeedWritePort: portNumber
		txLength: 2
		rxLength: 1
		txData: (ByteArray with: 2 with: 66).
	self dcLowSpeedGetStatusPort: portNumber.
	t := Time millisecondClockValue.
	timeout := 100.
	[10 milliSeconds asDelay wait.
	(lsBytesReady at: aNumber)
			> 0
		or: [(Time millisecondsSince: t)
				> timeout]] whileFalse.
	"Ask again, just in case"
	(sensorTypes at: aNumber) = SensorType lowspeed9V
		ifTrue: [self dcLowSpeedReadPort: portNumber]
	