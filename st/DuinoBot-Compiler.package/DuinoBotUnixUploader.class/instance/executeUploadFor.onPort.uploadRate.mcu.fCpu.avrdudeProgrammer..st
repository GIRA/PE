as yet unclassified
executeUploadFor: sketchName onPort: portName uploadRate: uploadRate mcu: mcu fCpu: fCpu avrdudeProgrammer: programmerId 
	"Do not call this, use
	#uploadSketchNamed:onPort:arduinoType:"
	| osProcess |
	osProcess := (Smalltalk
				at: #OSProcess
				ifAbsent: [^ self error: 'OSProcess not installed' translated]) thisOSProcess.
	self changeCurrentDirectoryOf: osProcess to: SmalltalkImage current imagePath , '/Arduino/Sketches'.
	osProcess command: './upload.sh ' , sketchName , ' ' , portName , ' ' , uploadRate asString , ' ' , mcu , ' ' , fCpu asString , ' ' , programmerId