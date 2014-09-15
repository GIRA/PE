drawing
drawGrabAreaOn: aCanvas 
	| rect borderColor |
	borderColor _ self borderColor.
	rect _ self grabArea.
	rect left
		to: rect right
		by: 2
		do: [:x | aCanvas
				frameRectangle: (x @ rect top corner: x + 1 @ rect bottom)
				color: borderColor]