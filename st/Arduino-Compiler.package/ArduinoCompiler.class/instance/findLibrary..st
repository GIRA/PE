finding libraries
findLibrary: includeString
	"Look for the directory containing the library matching the name given as parameter and return it"
	^ self librariesDirectory
		directoryNamed: (self librariesDirectory directoryNames
				detect: [:dirName |
					(self librariesDirectory directoryNamed: dirName) fileNames 
						anySatisfy: [:fileName | '#' , fileName , '#' match: includeString]]
				ifNone: [self error: ('No library {1} was found' format: {includeString})]) 