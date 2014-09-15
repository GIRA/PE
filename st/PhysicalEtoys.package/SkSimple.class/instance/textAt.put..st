accessing
textAt: aPoint put: aText 
	aText = ''
		ifTrue: [self removeAt: aPoint.
			^ ''].
	map at: aPoint put: aText asString.
	self changed.
	^ aText