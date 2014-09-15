initialize
initialize
	"
	self initialize
	"
	lastBoardType := lastPortName := nil.
	'direct' translatedNoop.
	'compiled' translatedNoop.
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #DuinoBotMode;
			 symbols: #(direct compiled )).
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #DuinoBotType;
			 symbols: DuinoBotType allFriendlyNames asSortedCollection).