updating
resolve
	| m1 m2 distance |
	args size < 3
		ifTrue: [^ self].
	m1 _ (args first contents isKindOf: Player)
				ifTrue: [args first contents costume]
				ifFalse: [^ self].
	m2 _ (args second contents isKindOf: Player)
				ifTrue: [args second contents costume]
				ifFalse: [^ self].
	distance _ args third contents isNumber
				ifTrue: [args third contents]
				ifFalse: [^ self].
	self
		setDistanceFrom: m1
		to: m2
		distance: distance