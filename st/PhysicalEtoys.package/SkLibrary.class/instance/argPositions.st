arg accessing
argPositions
	^ (1 to: args size)
		collect: [:index | index @ 1]