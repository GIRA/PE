comparing
= anObject
	(anObject isKindOf: self class) ifFalse: [^ false].
	^ self name = anObject name and: [self type = anObject type]