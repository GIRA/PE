signaling errors
signalInstVarToImplement: aVariableNode 
	^ (CInstVarToImplement
		inStruct: (self kit newStructFor: class)
		var: (self kit
				newVariableNamed: aVariableNode name asCIdentifier
				type: (self findTypeOf: aVariableNode))) signal 