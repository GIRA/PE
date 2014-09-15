testing
isApplicableKey: anObject 
	anObject class == Point
		ifFalse: [^ false].
	anObject x = 1
		ifFalse: [^ false].
	(anObject y < 2
			or: [anObject y > (map size + 1)])
		ifTrue: [^ false].
	^ true