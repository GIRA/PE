accessing
size
	^ model size
		ifNil: [size
				ifNil: [size _ 0]]