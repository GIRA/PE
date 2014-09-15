as yet unclassified
declaration
	^ String streamContents: [:stream |
		self isATask
			ifTrue: [stream nextPutAll: 'task']
			ifFalse: [stream nextPutAll: 'safecall ', self returnType source].
		stream nextPutAll: ' ', self name, '('.
		self arguments
			do: [:each | stream nextPutAll: each source]
			separatedBy: [stream nextPutAll: ', '].
		stream nextPutAll: ');']