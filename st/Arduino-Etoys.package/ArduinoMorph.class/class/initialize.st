initialize
initialize
	"
	self initialize
	"
	'input' translatedNoop.
	'output' translatedNoop.
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #ArduinoPinMode;
			 symbols: #(#input #output )).
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #ArduinoType;
			 symbols: ArduinoType allFriendlyNames asSortedCollection).
	'direct' translatedNoop.
	'compiled' translatedNoop.
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #ArduinoMode;
			 symbols: #(direct compiled firmata)).