accessing
projectAt: anObject ifAbsent: aBlock 
	| set colors |
	set _ SkProject current colorSet.
	set
		ifNil: [^ aBlock value].
	colors _ set
				at: anObject
				ifAbsent: [^ aBlock value].
	SkColorSet for: anObject color: colors basic.
	^ colors