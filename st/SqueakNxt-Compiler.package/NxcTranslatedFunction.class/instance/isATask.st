as yet unclassified
isATask
	"To define a method as a task you should use the #task pragma"
	(ownerClass ultimateCompiledMethodAt: selector ifAbsent: [])
		ifNil: [self error: 'Method not found']
		ifNotNil: [:method |
			^ (method pragmaAt: #task) notNil]