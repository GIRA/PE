structure
removeAt: key 
	| cell name |
	name _ key class == Point
				ifTrue: [(self rowAt: key y) key]
				ifFalse: [key].
	self isLocked
		ifTrue: [^ self cellAt: name].
	cell _ super removeAt: name.
	self updateCache.
	self update: #cardList.
	^ cell