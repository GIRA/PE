sound
playNote: aSymbol
	self playTone: (PEUtilities
				frequencyFor: aSymbol
				ifAbsent: [])