drawing
drawOn: aCanvas 
	super drawOn: aCanvas.
	dropZone
		ifNotNil: [aCanvas
				fillRectangle: (self
						cellAreaToScreen: (dropZone intersect: area))
				fillStyle: (SkColorSet labelFor: model)
				borderStyle: self borderStyle].
	self drawDependMap: aCanvas.
	self drawBorder: aCanvas.
	self drawContents: aCanvas