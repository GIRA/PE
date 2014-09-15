accessing
tempVarsOf: methodNode 
	^ Array streamContents: [:temporaries |
		methodNode allTemporaryVariables
			do: [:varName | 
				temporaries nextPut: (self kit
					newVariableNamed: varName asCIdentifier
					type: (self
							findTypeOf: ((RBVariableNode named: varName) parent: methodNode)))]]