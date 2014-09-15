as yet unclassified
acceptMessageNode: aMessageNode
	| method receiverClass |
	receiverClass := self findClassOf: aMessageNode receiver.
	method := receiverClass ultimateCompiledMethodAt: aMessageNode selector ifAbsent: [self error: 'Method not found'].

	(method pragmaAt: #startTask)
		ifNotNil: [:pragma | 
			(CMethodToImplement
				class: receiverClass
				selector: aMessageNode arguments first value)
				signal.
			self storeStartTask: aMessageNode.
			^ self].	

	super acceptMessageNode: aMessageNode