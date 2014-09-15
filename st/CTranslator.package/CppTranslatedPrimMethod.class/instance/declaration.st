as yet unclassified
declaration
	^ String streamContents: [:stream |
		stream nextPutAll: 'static '.
		stream nextPutAll: self returnType source, ' '.
		stream nextPutAll: self name, '('.
		stream nextPutAll: self selfType source;
				nextPutAll: ' self'.
		self arguments notEmpty ifTrue: [stream nextPutAll: ', '].
		self arguments
			do: [:each | stream nextPutAll: each source]
			separatedBy: [stream nextPutAll: ', '].
		stream nextPutAll: ');']