private
setPins: anArrayOfPins
	super setPins: anArrayOfPins.
	isConfigured ifTrue: [self startSteppingProcess]