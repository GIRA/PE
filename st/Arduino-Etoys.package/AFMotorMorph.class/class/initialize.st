class initialization
initialize
	"
	self initialize
	"
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #MotorState;
			 symbols: #(#Running #Stopped )).
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #MotorDirection;
			 symbols: #(#Forward #Backward ))
