creating files
createTranslationFileNamed: fileName for: aDictionary in: aLocaleID
	| file |
	file := (self directoryForLocaleID: aLocaleID)
				forceNewFileNamed: fileName, '.strings'.
	[file nextPutAll: (aDictionary asCSVStringWithDelimiter: $;)]
		ensure: [file close]