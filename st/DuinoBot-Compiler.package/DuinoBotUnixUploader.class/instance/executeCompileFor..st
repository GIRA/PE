as yet unclassified
executeCompileFor: sketchName 
	"Do not call this, use #compileSketch:"
	| osProcess |
	osProcess := (Smalltalk
				at: #OSProcess
				ifAbsent: [^ self error: 'OSProcess not installed' translated]) thisOSProcess.
	self changeCurrentDirectoryOf: osProcess to: SmalltalkImage current imagePath , '/Arduino/Sketches'.
	osProcess command: './upload.sh ' , sketchName 