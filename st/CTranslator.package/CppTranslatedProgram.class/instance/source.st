accessing
source
	"Store program's name"
	| source |
	source := WriteStream on: ''.
	source nextPutAll: '/* ', self sourceFileName ,' */'; cr; cr.

	"Store header include"
	source nextPutAll: '#include "', self headerFileName, '"'; cr; cr.
	
	"Store main method implementation. The methods are included in the header inside their respective classes"
	source nextPutAll: self mainImplementation; cr; cr.

	^ CFormatter format: source contents