class initialization
initialize
	"
		self initialize.
	"
	self compileSqNumberParserIfNotFound.

	Vocabulary addStandardVocabulary: (MusicalNoteType new 
		vocabularyName: #PENote;
		symbols: self noteNames).