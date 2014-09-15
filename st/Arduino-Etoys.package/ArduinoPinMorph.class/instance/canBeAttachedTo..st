testing
canBeAttachedTo: aMorph 
	^ self class devices
		anySatisfy: [:class | aMorph isMemberOf: class]