*duinobot-etoyscompiler
setDuinoBotMode: aSymbol
	self getDuinoBotMode = aSymbol ifTrue: [^self].
	self costume renderedMorph
		mode: (aSymbol caseOf: {
			[#direct] -> [DuinoBotDirectMode new].
			[#compiled] -> [DuinoBotCompiledMode new].
			} otherwise: [^self]).
	self updateScriptEditors