drawing
drawBorder: aCanvas 
	| y offset x borderColor borderWidth |
	offset _ self borderWidth // 2.
	borderColor _ self borderColor.
	borderWidth _ self borderWidth.
	self visibleArea top
		to: self visibleArea bottom - 2
		do: [:row | 
			y _ (self cellToScreenRect: self visibleArea right @ row) bottom + offset.
			aCanvas
				fillRectangle: (self left + borderWidth @ y corner: self right - borderWidth @ y + 1)
				color: borderColor].
	self visibleArea left
		to: self visibleArea right - 2
		do: [:col | 
			x _ (self cellToScreenRect: col @ self visibleArea top) right + offset.
			aCanvas
				fillRectangle: (x @ (self top + borderWidth) corner: x + 1 @ (self bottom - borderWidth))
				color: borderColor]