accessing
speed: aNumber
	self controlAttaching; reconfigureIfNecessary.
	speed := aNumber min: 100 max: -100.
	speed < 0
		ifTrue: [self d0Pin value: 0.
			self d1Pin value: 1]
		ifFalse: [self d0Pin value: 1.
			self d1Pin value: 0].
	self enablePin value: (speed abs / 100 * 255)
	