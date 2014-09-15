as yet unclassified
main
	self setSensorLowSpeed: 3.
	[(self sensorUS: 3) < 30
		ifTrue: [self onFwd: 0 speed: 100.
				self onFwd: 2 speed: -100]
		ifFalse: [self onFwd: 0 speed: 100.
				self onFwd: 2 speed: 100]] repeat 