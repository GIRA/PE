drawing
drawOn: aCanvas 
	super drawOn: aCanvas.
	self drawGrabAreaOn: aCanvas.
	self drawContents: aCanvas.
	self drawBorder: aCanvas