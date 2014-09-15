accessing
clearRow: row
	(row > numberOfRows or: [row <= 0]) ifTrue: [^self error: 'Invalid row' translated].
	1 to: numberOfColumns do: [:c| self cellValueAt: row@c put: '']

