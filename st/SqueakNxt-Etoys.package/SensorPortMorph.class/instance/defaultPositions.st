as yet unclassified
defaultPositions
	^ ({-200 @ 100. -75 @ 200. 75 @ 200. 200 @ 100}
		collect: [:each | each + self center])
		at: port portNumber 