initialize
initialize
	"StepperMotorMorph initialize"
	'forward' translatedNoop.
	'backwards' translatedNoop.
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #StepperDirection;
			 symbols: #(#forward #backwards )).
	'normal' translatedNoop.
	'waveDrive' translatedNoop.
	'halfStep' translatedNoop.
	Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #StepperMode;
			 symbols: #(#normal #waveDrive #halfStep )).