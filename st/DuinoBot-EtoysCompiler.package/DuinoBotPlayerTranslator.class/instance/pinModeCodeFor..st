accessing
pinModeCodeFor: mode
	^ (mode isKindOf: IRMode)
		ifTrue: ['4']
		ifFalse: [super pinModeCodeFor: mode]