updating
isStepping
	(self isStepList
			and: [map isEmpty not])
		ifTrue: [^ true].
	^ super isStepping