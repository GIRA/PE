accessing
source
	^ String streamContents: [:stream |
		stream nextPutAll: self declaration allButLast; cr.
		stream nextPut: ${; cr.
		self temporaries do: [:each | stream nextPutAll: each source, ';'; cr].
		stream nextPutAll: self body.
		stream nextPut: $}]