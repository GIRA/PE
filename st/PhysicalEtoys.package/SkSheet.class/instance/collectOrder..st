planning
collectOrder: tree 
	tree isCollection
		ifFalse: [^ Array with: tree].
	^ Array
		streamContents: [:aStream | 
			tree allButFirst
				do: [:node | aStream
						nextPutAll: (self collectOrder: node)].
			aStream nextPut: tree first]