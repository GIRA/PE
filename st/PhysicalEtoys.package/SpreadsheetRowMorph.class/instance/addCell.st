adding/removing cells
addCell
	numberOfCells := numberOfCells + 1.
	self addMorphBack: ((self newTextMorphWithContents: '') height: self height)