initialize
initializeWithRows: nRows columns: nColumns
	numberOfRows := nRows.
	numberOfColumns := nColumns.
	self initialize.
	self layoutPolicy: TableLayout new; listDirection: #topToBottom.
	self hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	self color: Color black.
	self initializeSubmorphs; setOverwrite
