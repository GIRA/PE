vocabulary
updateVocabularyForNxt
	Vocabulary addStandardVocabulary: (PluggableListType new vocabularyName: #PENxtPort;
		 block: [self availablePortsForNxt]).
