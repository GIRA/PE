accessing
active: aBoolean 
	aBoolean
		ifTrue: [self device setActive]
		ifFalse: [self device setInactive]