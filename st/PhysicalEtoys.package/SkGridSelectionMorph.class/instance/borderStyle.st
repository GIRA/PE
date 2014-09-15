visual properties
borderStyle
	^ SkColorSet
		selectedBorderStyleFor: (holder
				ifNotNil: [holder model rule])