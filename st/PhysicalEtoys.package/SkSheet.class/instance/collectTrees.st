planning
collectTrees
	"Adopt parted node (collectDependents) into a big tree"
	"The order is important"
	| pool newNodes isFound |
	"pool is a map of observer -> subjects"
	pool _ self collectDependents.
	newNodes _ OrderedCollection new.
	pool
		do: [:node | 
			isFound _ false.
			(pool copyWithout: node)
				do: [:mother | (self hasRecursion: mother first in: node)
						ifFalse: [2
								to: mother size
								do: [:index | (isFound not
											and: [(mother at: index)
													= node first])
										ifTrue: [mother at: index put: node.
											isFound _ true]]]].
			isFound
				ifFalse: [newNodes add: node]].
	^ newNodes asArray