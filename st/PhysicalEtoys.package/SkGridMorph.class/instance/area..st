accessing
area: aRectangle 
	area = aRectangle
		ifTrue: [^ self].
	area _ aRectangle.
	self areaChanged.
	self changed