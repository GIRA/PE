*arduino-etoyscompiler
translateScriptNamed: scriptName of: aMorph
	"First asks the player translator to merge all the players into one
	ArduinoSketch subclass. Then generates the C++ code"
	^ (self playerTranslator translateMainScript: scriptName of: aMorph)
			translatedToArduinoC: #main