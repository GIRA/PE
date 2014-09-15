iterating
allMorphsDo: aBlock
	"Iterates over all morphs composing the robot taking care of posible nil occurrences"
	self allMorphs do: [:each |
		each notNil ifTrue: [aBlock value: each]]