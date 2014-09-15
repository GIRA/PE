compiling
verify
	"Compiles the program and returns a collection of NbcErrors. If the collection is empty then the program is ok"
	^ self execute: Nbc forThisPlatform