drawing
drawOn: aCanvas 
	| graphBounds |
	graphBounds := self drawLabelsOn: aCanvas.
	aCanvas clipBy: graphBounds during: [:canvas |
		self drawDataOn: canvas in: graphBounds]
