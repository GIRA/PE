accessing
source
	"Store program's name"
	| source |
	source := WriteStream on: ''.
	source nextPutAll: '/* ', programName, ' */'; cr; cr.

	"Store structs definitions"
	structs do: [:struct |
		source nextPutAll: struct source; cr.
	].
	source cr.

	"Store methods' declarations"
	source nextPutAll: self mainDeclaration; cr.
	self methods do: [:method |
			source nextPutAll: method declaration; cr.
		].
	source cr.

	"Store methods implementation"
	source nextPutAll: self mainImplementation; cr; cr.
	self methods do: [:method |
			source nextPutAll: method source]
			separatedBy: [source cr; cr].

	^ CFormatter format: source contents