as yet unclassified
audible: aBoolean
	aBoolean
		ifTrue:[self device setAudible]
		ifFalse: [self device setInaudible]