creating files
createTranslationFiles
	Utilities informUserDuring: [:bar |
		PhysicalEtoys packages do: [:each |
			bar value: ('Creating translation files for package {1}'
							format: {each}).
			self createTranslationFilesForPackage: each]]