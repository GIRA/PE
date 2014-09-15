layout
screenToCell: aPoint 
	^ holder
		ifNil: [super screenToCell: aPoint]
		ifNotNil: [holder screenToCell: aPoint]