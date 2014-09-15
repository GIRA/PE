cell accessing
cellAt: key ifAbsent: aBlock 
	"Evaluate aBlock when not found and key is not point"
	(self includesArgs: key)
		ifTrue: [^ self args at: key x].
	(self includesPosition: key)
		ifTrue: [^ SkDictionaryCell newFor: self key: key].
	(map includesKey: key)
		ifTrue: [^ SkDictionaryCell newFor: self key: key]
		ifFalse: [^ aBlock value]