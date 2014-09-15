visiting
acceptMessageNode: aMessageNode 
	"It looks for the pragma #returnType: in the method being called. If not found, it returns the receiver's class."
	| receiverClass method |
	receiverClass := self findClassOf: aMessageNode receiver.
	method := receiverClass ultimateCompiledMethodAt: aMessageNode selector ifAbsent: [self error: 'Method not found'].
	
	(method pragmaAt: #returnType:)
		ifNotNilDo: [:pragma |
			^ (self computeTypes: pragma arguments first) first].

	^ receiverClass