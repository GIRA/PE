as yet unclassified
executeUploadFor: sketchName onPort: portName uploadRate: uploadRate mcu: mcu fCpu: fCpu avrdudeProgrammer: programmerId
	"Do not call this, use
	#uploadSketchNamed:onPort:arduinoType: "
	| osProcess |
		osProcess := (Smalltalk
				at: #OSProcess
				ifAbsent: [^ self error: 'OSProcess not installed' translated]) thisOSProcess.
	self changeCurrentDirectoryOf: osProcess to: SmalltalkImage current imagePath , (self allSketchesDirectory fullName).
	osProcess command: 'ARDUINO_INSTALL_DIR=',ArduinoMacUploader arduinoInstallDir fullName, ' ./upload.sh ' , sketchName , ' ' , portName , ' ' , uploadRate asString , ' ' , mcu , ' ' , fCpu asString , ' ' , programmerId.
	Transcript show: 'ARDUINO_INSTALL_DIR=',ArduinoMacUploader arduinoInstallDir fullName, ' ./upload.sh ' , sketchName , ' ' , portName , ' ' , uploadRate asString , ' ' , mcu , ' ' , fCpu asString , ' ' , programmerId; cr.
