initialization
initialize
	super initialize.
	selectionMorph _ SkGridSelectionMorph new holder: self.
	self
		area: (1 @ 1 extent: 4 @ 4).
	self
		borderStyle: (RaisedBorder color: Color black width: 1).
	self
		fillStyle: (SolidFillStyle
				color: (Color
						r: 1.0
						g: 0.935
						b: 0.839)).
	self cornerStyle: #rounded.
	self selection: nil.
	showFormula _ false