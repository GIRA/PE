*arduino-etoyscompiler
download: anArduinoCTranslatedProgram
	[[anArduinoCTranslatedProgram 
		uploadOnPort: self portName 
		arduinoType: self arduinoType]
		on: CompilingSketchError
		do: [:err | 
			"This should *never* happen, but if it does
			it would be good to see the error"
			(PESyntaxError
				message: err messageText
				translatedCode: anArduinoCTranslatedProgram asStringWithLineNumbers
				originalCode: (Smalltalk at: self playerTranslator programName) sourceCode)
					show]]
		on: Error
		do: [:err | self inform: err description]