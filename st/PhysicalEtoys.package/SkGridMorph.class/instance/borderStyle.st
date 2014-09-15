visual properties
borderStyle
	^ self model
		ifNil: [super borderStyle]
		ifNotNil: [SkColorSet borderStyleFor: self model rule]