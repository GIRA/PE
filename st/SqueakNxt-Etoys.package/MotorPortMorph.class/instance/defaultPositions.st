accessing
defaultPositions
	^ ({-200 @ -100. 180 @ -250. 200 @ -100}
		collect: [:each | each + self center])
		at: port portNumber