visiting
acceptVariableNode: aVariableNode 
	| methodNode findPragma |
	methodNode := aVariableNode methodNode.
	
	findPragma := [:selector | "Looks in the pragmas for the given selector and returns the arguments value"
		(methodNode pragmas detect: [:each | each selector = selector]
			ifNone: [self error: 'Missing ', selector printString, ' pragma for variable ', aVariableNode name printString])
			ifNotNilDo: [:pragma | pragma arguments first value]].

	"Is it an argument?"
	(methodNode arguments includes: aVariableNode)
		ifTrue: [
			^ (self computeTypes: (findPragma value: #argTypes:))
				at: (methodNode arguments indexOf: aVariableNode)].
		
	"Is it a temp var?"
	(methodNode allTemporaryVariables includes: aVariableNode name)
		ifTrue: [
			^ (self computeTypes: (findPragma value: #tempTypes:))
				at: (methodNode allTemporaryVariables indexOf: aVariableNode name)].
			
	"Is it an inst var?"
	((selfClass instVarNamesUpTo: CObject) includes: aVariableNode name)
		ifTrue: [| className |
			className := (selfClass instVarTypesUpTo: CObject)
								at: ((selfClass instVarNamesUpTo: CObject) 
										indexOf: aVariableNode name).
		"In theory, this should never throw an error"
		^ Smalltalk
			at: className
			ifAbsent: [self error: 'Invalid type: ', className]].
	
	"Is it a class?"
	(Smalltalk includesKey: aVariableNode name asSymbol)
		ifTrue: [^ (Smalltalk at: aVariableNode name asSymbol) class].
		
	self error: 'Variable''s type not found'