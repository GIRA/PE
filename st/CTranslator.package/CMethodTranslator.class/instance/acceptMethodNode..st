visiting
acceptMethodNode: aMethodNode
	"I make sure the last statement is a return self"
	super acceptMethodNode: aMethodNode.
	aMethodNode lastIsReturn ifFalse: [self visitNode: self selfReturn]