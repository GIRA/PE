class initialization
initialize
	"
	self initialize.
	"
	'direct' translatedNoop.
	'compiled' translatedNoop.
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #NxtMode;
			 symbols: #(direct compiled)).