vocabulary
updateVocabulary
	Vocabulary addStandardVocabulary: (PluggableListType new vocabularyName: #PEPort;
		 block: [self availablePorts]).
