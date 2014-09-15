visual properties
fillStyle
	^ SkColorSet
		selectedFor: (holder
				ifNotNil: [holder model rule])