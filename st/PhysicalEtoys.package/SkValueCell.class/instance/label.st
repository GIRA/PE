accessing
label
	^ (self contents isKindOf: Player)
		ifTrue: [self contents externalName]
		ifFalse: [(model isKindOf: Player)
				ifTrue: [self slotName]]