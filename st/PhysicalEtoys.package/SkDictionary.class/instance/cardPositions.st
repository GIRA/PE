accessing
cardPositions
	^ (1 to: orderedCache size + 1)
		collect: [:each | 2 @ each]
		thenSelect: [:key | (self at: key) isSkObject]