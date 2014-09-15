adding/removing cells
addRow
	| newRow |
	numberOfRows := numberOfRows + 1.
	newRow := self newRow.
	1 to: numberOfColumns do: [:i | 
		newRow column: i width: (self widthOfCell: i)	
	].
	self addMorphBack: newRow