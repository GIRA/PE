finding types
findTypeOf: aProgramNode
	"It wraps the class found inside a CType instance"
	^ self kit newTypeFor: (self findClassOf: aProgramNode)