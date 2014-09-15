accessing
updateKeys
	| propertyKeys newMap |
	propertyKeys _ self findName: 'PropertyKeys'.
	newMap _ Dictionary new.
	map
		associationsDo: [:assoc | (assoc key class == Point
					or: [propertyKeys includes: assoc key])
				ifTrue: [newMap at: assoc key put: assoc value]].
	(map values
		select: [:cell | cell contents class == SkName]
		thenCollect: [:cell | cell contents])
		do: [:each | newMap at: each key put: each cell].
	map _ newMap.