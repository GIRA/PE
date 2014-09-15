as yet unclassified
storeRegularMessageSend: aMessageNode
	| receiverClass args |
	receiverClass := (self findClassOf: aMessageNode receiver).
	args := (receiverClass isMeta not and: [receiverClass isPrimitive])
		ifTrue: [{aMessageNode receiver}, aMessageNode arguments]
		ifFalse: [aMessageNode arguments].
	source nextPutAll: (self findTypeOf: aMessageNode receiver) name, aMessageNode selector asCIdentifier, '('.
	args
		do: [:each | self visitNode: each]
		separatedBy: [source nextPutAll: ', '].
	source nextPut: $)