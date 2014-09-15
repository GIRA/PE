as yet unclassified
argVarsOf: methodNode
	"In c++ we don't need to add the self variable as the first argument"
	^ Array streamContents: [:arguments |
		methodNode arguments do: [:each | 
			arguments nextPut: (self kit
					newVariableNamed: each name asCIdentifier
					type: (self findTypeOf: each))]]