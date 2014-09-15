accessing
editContents: anObject 
	| string |
	(self formula: anObject)
		ifTrue: [^ self].
	anObject isNumber
		ifTrue: [^ self contents: anObject].
	string _ anObject isString
				ifTrue: [anObject]
				ifFalse: [(anObject isText
							and: [anObject unembellished])
						ifTrue: [anObject asString]].
	string
		ifNotNil: [^ self
				contents: ((self isLikeNumber: string)
						ifTrue: [string asNumber]
						ifFalse: [string])].
	self contents: anObject