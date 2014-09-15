makefile
arduinoInstallDir
	"This must return the absolute path or the path relative to the image position to the sketch directory. Currently it expects Arduino.app alongside the squeak image"

	^FileDirectory default directoryNamed: 'Arduino.app/Contents/Resources/Java'