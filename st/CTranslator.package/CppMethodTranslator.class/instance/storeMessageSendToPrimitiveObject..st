as yet unclassified
storeMessageSendToPrimitiveObject: aMessageNode 
	| receiverClass |
	receiverClass := self findClassOf: aMessageNode receiver.
	source nextPutAll: receiverClass name;
			nextPutAll: '::';
			nextPutAll: aMessageNode selector asCIdentifier;
			nextPut: $(.
	{aMessageNode receiver}, aMessageNode arguments
		do: [:each | self visitNode: each]
		separatedBy: [source nextPutAll: ', '].
	source nextPut: $)