planning
collectOrder
	| trees |
	trees _ self collectTrees.
	^ trees
		inject: OrderedCollection new
		into: [:order :next | order
				addAll: (self collectOrder: next);
				 yourself]