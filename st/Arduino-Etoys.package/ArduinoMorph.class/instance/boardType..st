accessing
boardType: aSymbol 
	self isConnected
		ifTrue: [^ self].
	boardType := aSymbol.
	self class lastBoardType: aSymbol.