accessing
argVarsOf: methodNode
	^ Array streamContents: [:arguments |
		arguments nextPut: (self kit newVariableNamed: 'self' type: (self kit newTypeFor: class)).
		methodNode arguments do: [:each | 
			arguments nextPut: (self kit
					newVariableNamed: each name asCIdentifier
					type: (self findTypeOf: each))]]