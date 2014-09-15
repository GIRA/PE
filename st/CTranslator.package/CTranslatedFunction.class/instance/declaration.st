accessing
declaration
	^ String
		streamContents: [:stream | 
			stream nextPutAll: self returnType source.
			stream nextPutAll: ' ' , self name , '('.
			self arguments
				do: [:each | stream nextPutAll: each source]
				separatedBy: [stream nextPutAll: ', '].
			stream nextPutAll: ');']