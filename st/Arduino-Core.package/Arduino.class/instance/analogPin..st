accessing
analogPin: aSmallInteger 
	^ analogPins at: aSmallInteger ifAbsent: [self inaccessiblePinError ]