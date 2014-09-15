as yet unclassified
acceptVariableNode: aVariableNode 
	(class bindingOf: aVariableNode name)
		ifNotNil: [:association | association value isLiteral
				ifTrue: [source nextPutAll: association value asString;
						 space;
						 nextPutAll: '/* ' , association key , ' */'.
					^ self]].
			
	"Is it an inst var?"
	((class instVarNamesUpTo: CObject) includes: aVariableNode name)
		ifTrue: [self signalInstVarToImplement: aVariableNode].
							
	aVariableNode name = 'self'
		ifTrue: [source nextPutAll: 'this']
		ifFalse: [source nextPutAll: aVariableNode name asCIdentifier]