drawing
drawDataOn: aCanvas in: aRectangle
	| pointsToDraw |
	aCanvas
		frameRectangle: aRectangle color: Color gray muchLighter;
		line: aRectangle topLeft to: aRectangle bottomLeft color: Color gray;
		line: aRectangle bottomLeft - (0@1) to: aRectangle bottomRight - (0@1) color: Color gray.
	pointsToDraw := self pointsToDrawNow.
	1 to: pointsToDraw size do: [:index |
		index = 1 ifFalse: [| from to |
			from := self cartesianPointToPixel: (pointsToDraw at: index - 1) 
					in: aRectangle.
			to := self cartesianPointToPixel: (pointsToDraw at: index)
					in: aRectangle.
			aCanvas line: from to: to color: self color
			]
		].