translating
translate: selector of: aClass
	| methodNode |
	source := WriteStream on: ''.
	class := aClass.
	methodNode := (RBParser parseMethod: (class ultimateSourceCodeAt: selector ifAbsent: [self error: 'Source code not found'])).
	self visitNode: methodNode.
	^ self kit 
		newFunctionFor: class
		selector: methodNode selector 
		body: source contents
		arguments: (self argVarsOf: methodNode)
		temporaries: (self tempVarsOf: methodNode)
		returnType: (self findTypeOf: methodNode)
		selfType: (self kit newTypeFor: class)