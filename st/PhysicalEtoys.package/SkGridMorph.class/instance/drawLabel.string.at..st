drawing
drawLabel: aCanvas string: aString at: aPoint 
	| aRectangle |
	aRectangle _ self localCellToScreenRect: aPoint.
	aCanvas
		clipBy: self bounds
		during: [:canvas | 
			canvas
				fillRectangle: aRectangle
				color: (SkColorSet
						labelFor: (self model
								ifNotNil: [self model rule])).
			canvas
				drawString: aString asString
				in: ((aRectangle expandBy: -2)
						withLeft: aRectangle left + 6)
				font: ScriptingSystem fontForTiles
				color: Color black]