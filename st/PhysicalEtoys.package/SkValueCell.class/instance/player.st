accessing
player
	(self contents isKindOf: Player)
		ifTrue: [^ self contents].
	(model isKindOf: Player)
		ifTrue: [^ model].
	^ super morph