drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	aCanvas translucentImage: self class robotForm at: self bounds topLeft + (22@17)