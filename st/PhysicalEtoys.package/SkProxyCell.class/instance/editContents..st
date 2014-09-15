accessing
editContents: anObject 
	((anObject isString
				or: [anObject isText])
			and: [anObject first = $=])
		ifTrue: [^ argCell editContents: anObject]
		ifFalse: [^ holderCell editContents: anObject]