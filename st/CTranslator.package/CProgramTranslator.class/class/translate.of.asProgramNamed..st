instance creation
translate: mainSelector of: aCProgram asProgramNamed: programName
	^ (self basicNew initializeWithProgram: (self kit newProgramNamed: programName))
			translateMain: mainSelector of: aCProgram