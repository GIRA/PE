visiting
acceptMessageNode: aMessageNode 
	| method receiverClass |
	receiverClass := self findClassOf: aMessageNode receiver.
	method := receiverClass ultimateCompiledMethodAt: aMessageNode selector ifAbsent: [self error: 'Method not found'].

	"Is it a c primitive?"
	(method pragmaAt: #c:)
		ifNotNil: [:nxcPrim | source nextPutAll: ((CPrimitiveRule on: nxcPrim arguments first) applyTo: aMessageNode using: self).
			^ self].

	"Should I inline the first argument?"
	(method pragmaAt: #c)
		ifNotNil: [:ign | source nextPutAll: aMessageNode arguments first value; cr. ^self].

	"Is it a creation method?"
	(method pragmaAt: #creationMethod)
		ifNotNil: [:pragma | self storeInstanceCreation: receiverClass.
			^ self].

	"If we got here, it is a regular method call and we need to signal the MethodToImplement exception."
	(CMethodToImplement
		class: receiverClass
		selector: aMessageNode selector)
			signal.
	self storeRegularMessageSend: aMessageNode