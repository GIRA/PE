building
newFunctionFor: ownerClass selector: aSymbol body: bodySource arguments: argVars temporaries: tempVars returnType: aCType selfType: anotherCType 
	"If the owner class is either a metaclass or a primitive class it returns a specific translated class"
	| new |
	new := [:someClass | someClass
				class: ownerClass
				selector: aSymbol
				body: bodySource
				arguments: argVars
				temporaries: tempVars
				returnType: aCType
				selfType: anotherCType].
	ownerClass isMeta
		ifTrue: [^ new value: self metaFunctionClass].
	ownerClass isPrimitive
		ifTrue: [^ new value: self primFunctionClass].
	^ new value: self functionClass