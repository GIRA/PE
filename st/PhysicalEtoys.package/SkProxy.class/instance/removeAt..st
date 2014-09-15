cell accessing
removeAt: key 
	| cell |
	cell _ self cellAt: key.
	map
		removeKey: key
		ifAbsent: [].
	^ cell