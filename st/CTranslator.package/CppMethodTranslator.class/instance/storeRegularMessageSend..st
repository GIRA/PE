as yet unclassified
storeRegularMessageSend: aMessageNode
	| receiverClass |
	receiverClass := (self findClassOf: aMessageNode receiver).
	receiverClass isMeta
		ifTrue: ["The method is static (i.e. class side)"
			self flag: #Richo. "This *really* smells bad"
			source nextPutAll: receiverClass instanceSide asCString;
				nextPutAll: '::']
		ifFalse: [self flag: #Richo. "Fix this!"
			receiverClass isPrimitive
				ifTrue: [self storeMessageSendToPrimitiveObject: aMessageNode.
					^ self].
			self visitNode: aMessageNode receiver.
			source nextPutAll: '->'].
	source nextPutAll: aMessageNode selector asCIdentifier, '('.
	aMessageNode arguments
		do: [:each | self visitNode: each]
		separatedBy: [source nextPutAll: ', '].
	source nextPut: $)