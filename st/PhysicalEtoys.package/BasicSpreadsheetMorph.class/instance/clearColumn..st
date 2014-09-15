accessing
clearColumn: column
	(column > numberOfColumns or: [column <= 0]) ifTrue: [^self error: 'Invalid column' translated].
	1 to: numberOfRows do: [:r| self cellValueAt: r@column put: '']

