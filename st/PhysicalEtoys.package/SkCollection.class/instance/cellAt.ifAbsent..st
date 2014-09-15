cell accessing
cellAt: key ifAbsent: aBlock 
	| contents |
	(self isApplicableKey: key)
		ifTrue: [contents _ map at: (key - 1) y ifAbsent: aBlock.
			^ SkValueCell new contents: contents]
		ifFalse: [^ aBlock value]