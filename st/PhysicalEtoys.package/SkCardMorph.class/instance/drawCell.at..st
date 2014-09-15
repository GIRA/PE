drawing
drawCell: aCanvas at: aPoint 
	| modelPoint |
	modelPoint _ self globalToLocal: aPoint.
	modelPoint = (0 @ 1)
		ifTrue: [^ self
				drawLabel: aCanvas
				string: model ruleName
				at: modelPoint].
	self drawContents: (model at: modelPoint) on: aCanvas at: modelPoint.
