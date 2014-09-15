accessing
motorPin: aSmallInteger 
	^ motorPins
		at: aSmallInteger
		ifAbsent: [self inaccessiblePinError]
