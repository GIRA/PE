accessing
morphFor: receiverName
	"Returns the morph represented by the argument or nil if it's not a valid morph"
	^ receiverName = 'self'
		ifTrue: [currentMorph]
		ifFalse: [self allMorphs
				detect: [:each | each notNil 
					and: [each assuredPlayer uniqueNameForReference = receiverName]]
				ifNone: [nil]]
