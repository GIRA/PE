layout
areaChanged
	| newBounds |
	self visibleArea
		ifNil: [^ self hide]
		ifNotNil: [converter _ SkCellScreenConverter grid: self border: 1.
			self show.
			newBounds _ self cellAreaToScreen: self visibleArea.
			self position: newBounds topLeft.
			self extent: newBounds extent]