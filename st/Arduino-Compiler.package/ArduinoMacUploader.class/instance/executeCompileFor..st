as yet unclassified
executeCompileFor: sketchName
	"Do not call this, use #compileSketchNamed:"
	| osProcess |
	osProcess := (Smalltalk
				at: #OSProcess
				ifAbsent: [^ self error: 'OSProcess not installed' translated]) thisOSProcess.
	self changeCurrentDirectoryOf: osProcess to: SmalltalkImage current imagePath , (self allSketchesDirectory).
	osProcess command: 'ARDUINO_INSTALL_DIR=',ArduinoMacUploader arduinoInstallDir fullName, ' ./upload.sh ' , sketchName.
	Transcript show: 'ARDUINO_INSTALL_DIR=',ArduinoMacUploader arduinoInstallDir fullName, ' ./upload.sh ' , sketchName; cr.
