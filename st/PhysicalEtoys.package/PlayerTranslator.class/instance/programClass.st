accessing
programClass
	"Returns the temporary class we are using to compile the code"
	^ Smalltalk at: self programName ifAbsent: []