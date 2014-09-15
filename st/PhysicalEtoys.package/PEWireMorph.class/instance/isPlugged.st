testing
isPlugged
	^ self sourceMorph notNil
		and: [self destinationMorph notNil]