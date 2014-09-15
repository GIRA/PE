accessing
digitalPin: aSmallInteger 
	^ digitalPins at: aSmallInteger ifAbsent: [self inaccessiblePinError]