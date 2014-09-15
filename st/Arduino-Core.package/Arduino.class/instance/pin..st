accessing
pin: pinNumber
	^ pinNumber > 13
		ifTrue: [self analogPin: pinNumber - 14]
		ifFalse: [self digitalPin: pinNumber]