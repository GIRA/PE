fileOut
prepareToBeSaved
"When saving a project be sure to disconnect the board, otherwise we will have a lot of problems"
	super prepareToBeSaved.
	self isConnected ifTrue: [self disconnect]