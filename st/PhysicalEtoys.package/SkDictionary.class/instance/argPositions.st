arg accessing
argPositions
	^ (1 to: self args size)
		collect: [:index | index @ 1]