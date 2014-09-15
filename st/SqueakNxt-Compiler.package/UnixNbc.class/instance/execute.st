as yet unclassified
execute
	"Executes the command using OSProcess"
	| osProcess |
	osProcess := (Smalltalk
				at: #OSProcess
				ifAbsent: [^ self error: 'OSProcess not installed' translated]) thisOSProcess.
	self changeCurrentDirectoryOf: osProcess to: SmalltalkImage current imagePath.
	osProcess command: './nbc ' , parameters contents