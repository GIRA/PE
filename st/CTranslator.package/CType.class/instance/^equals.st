comparing
= anObject
	(anObject isKindOf: self class) ifFalse: [^ false].
	^ anObject valueEquals: value