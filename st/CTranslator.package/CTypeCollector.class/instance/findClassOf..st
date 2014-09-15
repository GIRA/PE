finding types
findClassOf: aProgramNode
	"Instead of returning a CType instance wrapping a class, this method will return the class found. Sometimes it's needed to find the actual method to execute after a message send"
	aProgramNode = (RBVariableNode named: 'self')
		ifTrue: [^ selfClass].
	^ self visitNode: aProgramNode