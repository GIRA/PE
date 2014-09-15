public
uploadSketchNamed: sketchName onPort: portName arduinoType: arduinoType clean: cleanFlag
	| sketchDirectory |
	sketchDirectory := self allSketchesDirectory directoryNamed: sketchName.
	(sketchDirectory fileExists: 'Makefile')
		ifFalse: [self createMakefileOn: sketchDirectory for: arduinoType].
	cleanFlag
		ifTrue: [sketchDirectory forceNewFileNamed: 'clean' do: [:file |]]
		ifFalse: [sketchDirectory deleteFileNamed: 'clean' ifAbsent: []].
	self
		waitFor: self timeoutSeconds
		untilFinish: [self
				executeUploadFor: sketchName
				onPort: portName
				uploadRate: arduinoType uploadRate
				mcu: arduinoType mcu
				fCpu: arduinoType fCpu
				avrdudeProgrammer: arduinoType avrdudeProgrammer]
		on: sketchDirectory.
	sketchDirectory
		fileNamed: 'err'
		do: [:errors | self checkForErrorsOn: errors];
		fileNamed: 'out'
		do: [:out | ^ out contents]