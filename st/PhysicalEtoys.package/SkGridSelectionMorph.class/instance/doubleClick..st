event handling
doubleClick: evt 
	(self bounds containsPoint: ActiveHand position)
		ifTrue: [self installEditor]