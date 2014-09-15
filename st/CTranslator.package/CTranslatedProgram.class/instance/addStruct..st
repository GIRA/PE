accessing
addStruct: aCStruct
	"Adds a struct for the given class only if a struct is not already added. Returns the struct"
	^ structs
		detect: [:each | each ownerClass = aCStruct ownerClass]
		ifNone: [structs addFirst: aCStruct]