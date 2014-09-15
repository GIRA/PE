slots
direction: aSymbol
	aSymbol = #forward ifTrue: [device goForward] ifFalse: [device goBackwards ]