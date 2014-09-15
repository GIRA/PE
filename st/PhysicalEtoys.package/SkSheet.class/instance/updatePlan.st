planning
updatePlan
	"Order of plan is reserved, but not redundant"

	| keys remain |
	keys := self collectOrder.
	remain := keys asSet.
	plan := (keys select: 
					[:key | 
					(remain includes: key) and: 
							[(self cellAt: key) hasFormula and: 
									[remain remove: key.
									true]]]
				thenCollect: [:key | key -> (map at: key)]) asArray.
	dependMap := self dependMap