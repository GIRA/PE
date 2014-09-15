accessing
at: aPosition put: anObject 
	| cell |
	cell _ self assuredCellAt: aPosition.
	cell contents: anObject.
	^ anObject