cell accessing
cellAt: key ifAbsent: aBlock 
	key class = Point
		ifTrue: [key y = 1
				ifTrue: [key x <= args size
						ifTrue: [^ args at: key x ifAbsent: aBlock]]].
	^ aBlock value