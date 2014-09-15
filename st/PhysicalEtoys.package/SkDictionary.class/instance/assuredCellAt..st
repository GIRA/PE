cell accessing
assuredCellAt: key 
	(self includesArgs: key)
		ifTrue: [^ args at: key x].
	(self includesPosition: key)
		ifTrue: [key x = 1
				ifTrue: [^ (SkDictionaryCell newFor: self key: (self rowAt: key y) key)
						isKey: true]
				ifFalse: [^ SkDictionaryCell newFor: self key: (self rowAt: key y) key]].
	^ key class == Point
		ifTrue: [SkDictionaryCell newFor: self key: nil]
		ifFalse: [SkDictionaryCell newFor: self key: key]