class initialization
initialize
"
self initialize.
"
'overwrite' translatedNoop.
'append' translatedNoop.
Vocabulary addStandardVocabulary: (SymbolListType new vocabularyName: #WriteMode;
			 symbols: #(#overwrite #append)).