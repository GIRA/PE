accessing
contents: anObject 
	dictionary isLocked
		ifTrue: [^ self].
	key
		ifNil: [dictionary at: anObject asString put: '']
		ifNotNil: [self isKey
				ifTrue: [dictionary removeAt: key.
					dictionary at: anObject asString put: '']
				ifFalse: [dictionary at: key put: anObject]]