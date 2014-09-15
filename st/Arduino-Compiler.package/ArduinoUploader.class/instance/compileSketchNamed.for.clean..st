public
compileSketchNamed: sketchName for: arduinoType clean: cleanFlag
	| sketchDirectory |
	sketchDirectory := self allSketchesDirectory directoryNamed: sketchName.
	(sketchDirectory	fileExists: 'Makefile')
		ifFalse: [self createMakefileOn: sketchDirectory for: arduinoType].
	cleanFlag
		ifTrue: [sketchDirectory forceNewFileNamed: 'clean' do: [:file |]]
		ifFalse: [sketchDirectory deleteFileNamed: 'clean' ifAbsent: []].
	self
		waitFor: self timeoutSeconds
		untilFinish: [self executeCompileFor: sketchName]
		on: sketchDirectory.
	sketchDirectory
		fileNamed: 'err'
		do: [:errors | self checkForErrorsOn: errors];
		fileNamed: 'out'
		do: [:out | ^ out contents]