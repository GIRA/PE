as yet unclassified
main
	"Configure sensor"
	self setSensorLight: 0 active: true.
	
	"Get 100 samples in a second and use average as black value"
	black := 0.
	100 timesRepeat: [black := black + (self sensorValue: 0). self wait: 10].
	black := black / 100.
	
	[true] whileTrue: [
		self turnLeft.
		[self isOnWhite] whileTrue. "Wait until black"
		[self isOnBlack] whileTrue. "Wait until white"
		self turnRight.
		[self isOnWhite] whileTrue. "Wait until black"
		[self isOnBlack] whileTrue. "Wait until white"
	]