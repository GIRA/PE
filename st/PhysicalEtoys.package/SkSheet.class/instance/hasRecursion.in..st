planning
hasRecursion: aPoint in: node 
	"(self new hasRecursion: 1@1 in: {2@2. {1@1. 2@2}}) = true"
	"(self new hasRecursion: 1@1 in: {3@3. {2@2. 1@1}}) = false"
	^ node first = aPoint
		or: [node allButFirst
				anySatisfy: [:each | each isCollection
						and: [self hasRecursion: aPoint in: each]]]