adding/removing cells
addColumn
	numberOfColumns := numberOfColumns + 1.
	self submorphsDo: [:row | row addCell]