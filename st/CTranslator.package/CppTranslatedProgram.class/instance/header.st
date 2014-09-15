accessing
header
	"Store program's name"
	| source |
	source := WriteStream on: ''.
	source nextPutAll: '/* ', self headerFileName ,' */'; cr; cr.

	"Store includes"
	self allIncludes
		do: [:include |
			source nextPutAll: '#include ';
				nextPutAll: include;
				cr]
		separatedBy: [source cr].
	source cr.

	"Store structs definitions"
	structs do: [:struct |
		source nextPutAll: struct source; cr.
	].
	source cr.
	
	^ CFormatter format: source contents