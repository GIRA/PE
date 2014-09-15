accessing
updateCache
	orderedCache _ SortedCollection
				sortBlock: [:x :y | x key name <= y key name].
	map
		associationsDo: [:assoc | orderedCache add: assoc]