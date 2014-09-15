accessing
program: aNxcProgram
	source := aNxcProgram source.
	programName isNil ifTrue: [programName := aNxcProgram name]