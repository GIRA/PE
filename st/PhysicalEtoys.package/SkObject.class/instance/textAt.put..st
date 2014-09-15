accessing
textAt: aPoint put: aText 
	| cell |
	aText = ''
		ifTrue: [cell _ self removeAt: aPoint.
			cell hasCard
				ifTrue: [cell contents releaseHolder.
					self updatePlan.
					self changed: #cardList].
			^ ''].
	aPoint = (0 @ 0)
		ifTrue: [^ self name: aText asString].
	cell _ self assuredCellAt: aPoint.
	cell editContents: aText.
	cell resolveFormulaOn: self at: aPoint.
	self installFormulaAt: aPoint.
	self changed.
	^ aText