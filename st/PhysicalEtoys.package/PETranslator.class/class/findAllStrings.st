finding strings
findAllStrings
	^ Array streamContents: [:stream |
		PhysicalEtoys packages collect: [:each |
			stream nextPutAll: (self findAllStringsInPackage: each)
		]]