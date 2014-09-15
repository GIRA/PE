translating
parseTreeFor: aSymbol
	| source |
	source := self currentPlayerClass sourceCodeAt: aSymbol ifAbsent: [aSymbol asString].
	^ RBParser parseMethod: source onError: [ :msg :pos | ^ nil ]