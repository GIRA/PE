event handling
mouseMove: evt 
	| newArea |
	newArea _ self area encompass: (holder screenToCell: evt position)
					+ 1.
	area _ newArea.
	self areaChanged