initialization
initialize
	super initialize.
	origin _ 0 @ 0.
	self
		borderStyle: (RaisedBorder color: Color black width: 1).
	self
		fillStyle: (SolidFillStyle
				color: (Color
						r: 1.0
						g: 0.935
						b: 0.839)).
	self cornerStyle: #rounded