motors
motorPin: index
	^ motorPins at: index ifAbsent: [self inaccessiblePinError]