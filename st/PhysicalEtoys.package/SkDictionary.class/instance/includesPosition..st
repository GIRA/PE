testing
includesPosition: aPoint 
	aPoint class == Point
		ifFalse: [^ false].
	aPoint y < 2
		ifTrue: [^ false].
	aPoint y > (map size + 1)
		ifTrue: [^ false].
	(#(1 2 ) includes: aPoint x)
		ifFalse: [^ false].
	^ true