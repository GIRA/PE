drawing
labelAt: aPoint 
	aPoint x = aPoint y
		ifTrue: [^ ''].
	aPoint x = 0
		ifTrue: [^ aPoint y asString].
	^ ($A asInteger + aPoint x - 1) asCharacter asString