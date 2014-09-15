*squeaknxt-etoyscompiler
setNxtMode: aSymbol
	self getNxtMode = aSymbol ifTrue: [^self].
	self costume renderedMorph mode: (aSymbol caseOf: {
		[#direct] -> [DirectCommandProtocol new].
		[#compiled] -> [NxtCompiledMode new].
	} otherwise: [^self]).
	self updateScriptEditors