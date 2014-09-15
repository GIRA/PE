compiling
compileInFileNamed: outFile
	"Compiles the program into a file"
	^ self execute: (Nbc forThisPlatform outFile: outFile)