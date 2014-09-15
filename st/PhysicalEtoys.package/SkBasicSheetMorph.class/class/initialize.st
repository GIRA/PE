class initialization
initialize
	"
	self initialize.
	"
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #WriteMode;
			 symbols: #(#overwrite #append)).