as yet unclassified
acceptVariableNode: aVariableNode

	"Is it an inst var?"
	((class instVarNamesUpTo: CObject) includes: aVariableNode name)
		ifTrue: [self signalInstVarToImplement: aVariableNode.
			source nextPutAll: '_self.'].		

	source nextPutAll: aVariableNode name asCIdentifier.