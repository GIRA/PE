accessing
files
	^ (directory entries
		select: [:each | each isDirectory not and: [filter match: each name]])
		asSortedCollection: [:a :b | a name < b name]