accessing
source
	^ String streamContents: [:source || className |
		className := self className.
		"Instance side"
		source nextPutAll: 'struct _', className, ' {'; cr.
		variables do: [:var |
			self flag: #Richo. "I should have a type, not an ownerClass..."
			var type name = ownerClass asCString
				ifTrue: [source nextPutAll: 'struct _'].
			source nextPutAll: var source, ';'; cr].
		source nextPutAll: '};'; cr.
		source nextPutAll: 'typedef struct _', className, ' ', className, ';'		
		]