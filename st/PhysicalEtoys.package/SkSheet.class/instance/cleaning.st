updating
cleaning
	(map keys
		select: [:key | (map at: key) isNull
				and: [(dependMap keys includes: key) not]])
		do: [:key | map removeKey: key]