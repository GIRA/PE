visiting
storeRegularMessageSend: aMessageNode
	source nextPutAll: 	(self findTypeOf: aMessageNode receiver) name, aMessageNode selector asCIdentifier, '('.
	{aMessageNode receiver}, aMessageNode arguments
		do: [:each | self visitNode: each]
		separatedBy: [source nextPutAll: ', '].
	source nextPut: $)