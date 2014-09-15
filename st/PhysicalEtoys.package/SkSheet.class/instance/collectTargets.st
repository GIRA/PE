planning
collectTargets
	"Answer points that has formula or card"
	^ ((map keys
		select: [:key | key class = Point
				and: [(map at: key) hasFormula]])
		asSortedCollection: self sortBlock) asArray