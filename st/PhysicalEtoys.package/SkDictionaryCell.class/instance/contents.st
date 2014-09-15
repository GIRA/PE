accessing
contents
	(dictionary includesPosition: key)
		ifTrue: [key x = 1
				ifTrue: [^ (dictionary rowAt: key y) key].
			key x = 2
				ifTrue: [^ (dictionary rowAt: key y) value].
			^ ''].
	^ dictionary
		nameAt: key
		ifAbsent: ['']