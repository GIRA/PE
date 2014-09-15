*arduino-etoyscompiler
setArduinoMode: aSymbol
	self getArduinoMode = aSymbol ifTrue: [^self].
	self costume renderedMorph
		mode: (aSymbol caseOf: {
			[#firmata] -> [Firmata new].
			[#direct] -> [ArduinoDirectMode new].
			[#compiled] -> [ArduinoCompiledMode new].
			} otherwise: [^self]).
	self updateScriptEditors