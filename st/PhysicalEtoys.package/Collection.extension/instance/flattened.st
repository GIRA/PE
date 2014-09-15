*physicaletoys
flattened
	^ Array
		streamContents: [:stream | self
				do: [:each | (each isCollection and: [each isString not])
								ifTrue: [stream nextPutAll: each flattened]
								ifFalse: [stream nextPut: each]]]