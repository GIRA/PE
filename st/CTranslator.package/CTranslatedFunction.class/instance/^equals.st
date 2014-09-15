comparing
= anObject
	(anObject isKindOf: self class) ifFalse: [^ false].
	^ self source = anObject source