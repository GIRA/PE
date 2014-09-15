converting
becomeNoOp: aParseNode
	"Transforms the argument in an empty statement:
	
	self c: ''.
	"
	| noOp |
	noOp := RBMessageNode receiver: (self variable: 'self') selector: #c: arguments: {self literal: ''}.
	aParseNode become: (noOp parent: aParseNode parent)