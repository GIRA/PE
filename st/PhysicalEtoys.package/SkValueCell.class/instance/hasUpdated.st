testing
hasUpdated
	^ self hasCard
		or: [(self contents = oldValue) not]