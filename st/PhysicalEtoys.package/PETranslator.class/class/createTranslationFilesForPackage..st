creating files
createTranslationFilesForPackage: packageName
	| strings dict translate |
	translate := [:string :aLocaleID || translation |
		TextDomainManager allKnownDomains
			detect: [:domain | 
				translation := string translatedTo: aLocaleID inDomain: domain.
				string ~= translation]
			ifNone: [translation := string].
		translation].
	strings := self findAllStringsInPackage: packageName.
	NaturalLanguageTranslator availableLanguageLocaleIDs
		do: [:localeID |
		dict := Dictionary new.
		strings do: [:str |
			dict at: str put: (translate value: str value: localeID)].
		dict ifNotEmpty: [
			self createTranslationFileNamed: packageName
				for: dict
				in: localeID]]