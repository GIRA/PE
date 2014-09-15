accessing
cardPositions
	^ (1 to: map size)
		collect: [:each | 1 @ (each + 1)]