accessing
source
	"Store program's name"
	| source |
	source := WriteStream on: ''.
	source nextPutAll: '/* ', self sourceFileName ,' */'; cr; cr.

	"Store header include"
	source nextPutAll: '#include "', self headerFileName, '"'; cr; cr.
	
	"Store methods implementation"
	source nextPutAll: self mainImplementation; cr; cr.
	self methods do: [:method |
			source nextPutAll: method source]
			separatedBy: [source cr; cr].

	^ CFormatter format: source contents