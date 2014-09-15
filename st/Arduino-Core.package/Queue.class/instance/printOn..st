printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	list do: [:each | each printOn: aStream] separatedBy: [aStream nextPutAll: ', '].
	aStream nextPut: $)