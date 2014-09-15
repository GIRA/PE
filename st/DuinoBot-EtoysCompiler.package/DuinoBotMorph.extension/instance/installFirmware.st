*duinobot-etoyscompiler
installFirmware
	"This is a compromise made for the rare cases when compilation fails without giving
	an error and so subsequent compilations will also fail because 'make clean' will not
	be called.
	By forcing a clean firmware install we delete all the Sketches source files and call
	a 'make clean' on DuinoBot sources, hopefully going back to a stable state."
	| compiler sketch dir |
	self flag: #Richo. "This is a hack! At least it should be in the DuinoBotCompiler class"
	self disconnect.
	"Delete all source files from Sketches dir"
	dir := (FileDirectory default
		directoryNamed: 'Arduino')
		directoryNamed: 'Sketches'.
	dir directoryNames do: [:dirName |
		(dir directoryNamed: dirName)
			recursiveDelete].
	"Force firmware install. Make sure we call 'clean'"
	compiler := Smalltalk at: #DuinoBotCompiler ifAbsent: [^ self].
	sketch := Smalltalk at: #DuinoBotDirectModeSketch ifAbsent: [^ self].
	[(PEProgressBar
		label: 'Installing DuinoBot firmware' translated
		subLabel: '(this might take a few seconds)' translated)
		showWhile: [
			(compiler on: sketch translatedToArduinoC)
				compileFor: (self typeClass withFriendlyName: boardType);
				uploadOnPort: self portName
				arduinoType: (self typeClass withFriendlyName: boardType)
				clean: true]
		timeout: 60]
		on: (Smalltalk at: #CompilingSketchError)
		do: [^ self inform: 'Installing DuinoBot firmware failed for unknown reasons.
Make sure you selected the correct board type.
IMPORTANT: Unplug and replug your arduino before proceeding' translated].
	self inform: 'The DuinoBot firmware was successfully installed.' translated