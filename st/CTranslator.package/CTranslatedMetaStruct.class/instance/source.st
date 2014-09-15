accessing
source
	^ String streamContents: [:source || className |
		className := self className.
		"Class side"
		source nextPutAll: 'struct _', className , '_meta {'; cr.
		self flag: #Richo. "No class inst vars here?"
		source nextPutAll: '};'; cr.
		source nextPutAll: 'typedef struct _', className, '_meta ', className, '_meta;'; cr.
		source nextPutAll: className , '_meta* ', className, '_class;'; cr; cr.
		]