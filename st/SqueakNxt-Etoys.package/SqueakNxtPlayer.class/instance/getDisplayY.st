display
getDisplayY
	^ self costume renderedMorph valueOfProperty: #displayY ifAbsent: [0]