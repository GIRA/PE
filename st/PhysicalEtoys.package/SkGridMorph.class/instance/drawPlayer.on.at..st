drawing
drawPlayer: aPlayer on: aCanvas at: aPoint 
	"To debug, try  
	self drawCell: World canvas at: 2@6  
	"
	| aRectangle morph form scaleX scaleY scale |
	morph _ aPlayer costume.
	aRectangle _ self localCellToScreenRect: aPoint.
	form _ morph imageForm.
	scaleY _ aRectangle height / form height.
	scaleX _ aRectangle width / form width.
	scale _ (scaleX min: scaleY)
				min: 1.
	form _ form
				magnify: form boundingBox
				by: scale @ scale
				smoothing: 2.
	aCanvas translucentImage: form at: (aRectangle topLeft + (aRectangle extent - form extent / 2)) asIntegerPoint