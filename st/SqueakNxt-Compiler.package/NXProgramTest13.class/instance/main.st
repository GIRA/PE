as yet unclassified
main
	self setSensorTouch: 0.
	[(self sensorBoolean: 0)
		ifTrue: [self onFwd: 0 speed: 100]
		ifFalse: [self onFwd: 0 speed: 0]] repeat