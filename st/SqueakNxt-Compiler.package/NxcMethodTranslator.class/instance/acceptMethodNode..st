as yet unclassified
acceptMethodNode: aMethodNode
	"Overriden to make sure we don't add a 'return self' at the end of a task"
	self visitNode: aMethodNode body.
	aMethodNode lastIsReturn
		ifFalse: [aMethodNode pragmas 
			detect: [:each | each selector = #task]
			ifNone: [self visitNode: self selfReturn]]