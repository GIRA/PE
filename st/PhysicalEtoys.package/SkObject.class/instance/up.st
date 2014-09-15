accessing
up
	^ self parent
		ifNil: [SkProject current]