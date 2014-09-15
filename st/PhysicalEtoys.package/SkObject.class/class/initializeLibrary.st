class initialization
initializeLibrary
	"self initializeLibrary"
	| library |
	library _ (self root at: 'Library' put: SkDictionary new)
				parent: self root.
	library locked: true.
	library
		color: (Color
				r: 0.258
				g: 0.645
				b: 0.0).
	SkLibrary allSubclasses asArray , {SkSheet. SkDictionary}
		do: [:each | 
			each parent: library;
				 name: each defaultName.
			each color: each defaultColor].
	self initializePropertyKeys