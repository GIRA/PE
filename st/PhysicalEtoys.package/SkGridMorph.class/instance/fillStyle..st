visual properties
fillStyle: aFillStyle 
	super fillStyle: aFillStyle.
	self model
		ifNotNil: [SkColorSet for: self model rule color: aFillStyle asColor].
	self changed