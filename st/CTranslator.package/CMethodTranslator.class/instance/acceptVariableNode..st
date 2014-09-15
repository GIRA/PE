visiting
acceptVariableNode: aVariableNode
	"Is it a non primitive value outside of variable assignment?"
	"((CTypeCollector findTypeOf: aVariableNode in: class) isPrimitive not 
		and: [(aVariableNode parent isAssignment) not])
			ifTrue: [source nextPut: $&]."

	"Is it an inst var?"
	((class instVarNamesUpTo: CObject) includes: aVariableNode name)
		ifTrue: [self signalInstVarToImplement: aVariableNode.
			source nextPutAll: 'self->'].	

	"Is it 'self' on the class side?"
	(class isMeta and: [aVariableNode name = 'self'])
		ifTrue: [source nextPutAll: class instanceSide asCString, '_class'.
			^ self].
	
	"Is it a class?"
	(Smalltalk includesKey: aVariableNode name asSymbol)
		ifTrue: [source nextPutAll: aVariableNode name asCIdentifier, '_class'.
			^ self].
	
	source nextPutAll: aVariableNode name asCIdentifier.