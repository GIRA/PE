creating parse nodes
assignment: aRBVariableNode to: aRBLiteralValueNode 
	^ RBAssignmentNode
		variable: aRBVariableNode
		value: aRBLiteralValueNode