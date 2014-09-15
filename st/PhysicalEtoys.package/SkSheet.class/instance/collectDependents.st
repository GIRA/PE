planning
collectDependents
	"Answer 
	#((observer subject subject ..) 
	(observer subject subject ..) 
	(observer subject subject ..))"
	| node myDepends |
	myDepends _ self collectTargets
				collect: [:point | 
					node _ ((self cellAt: point)
								referenceAt: point)
								asSortedCollection: self sortBlock.
					node _ node asOrderedCollection addFirst: point;
								 yourself.
					node asArray].
	^ self collectCardDependents: myDepends