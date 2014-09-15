as yet unclassified
hasValidClass: aMorph 
	self class validConnectionClasses
		do: [:each | (aMorph isKindOf: each)
				ifTrue: [^ true]].
	^ false