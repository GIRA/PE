drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	aCanvas translucentImage: self ledHeadForm at: self bounds topLeft + (5 @ 0)