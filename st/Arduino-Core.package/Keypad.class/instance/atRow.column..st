accessing
atRow: rowNumber column: columnNumber
	self controlAttaching; reconfigureIfNecessary.
	^buttons at: rowNumber at: columnNumber