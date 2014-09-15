as yet unclassified
source
	^ String streamContents: [:source |
		source nextPutAll: 'struct ', ownerClass asCString, ' {'; cr.
		variables do: [:var |
			source nextPutAll: var source; nextPut: $;; cr].
		source nextPutAll: '};'
		]