adding/removing cells
removeColumn
	numberOfColumns := numberOfColumns - 1.
	self submorphsDo: [:row | row removeCell]