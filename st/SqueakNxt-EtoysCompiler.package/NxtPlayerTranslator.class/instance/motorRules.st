accessing-rules
motorRules
| selfVar |
selfVar := self variable: 'self'.
^ {
#setPower: -> [:node | 
	node arguments: {self nxcIndexOf: node receiver in: motors} , node arguments;
		selector: #onFwd:speed:;
		receiver: selfVar.
	super acceptMessageNode: node].

#float -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: motors};
		selector: #float:;
		receiver: selfVar.
	super acceptMessageNode: node].

#brake -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: motors};
		selector: #off:;
		receiver: selfVar.
	super acceptMessageNode: node].

#getPower -> [:node |
	node arguments: {self nxcIndexOf: node receiver in: motors};
		selector: #motorPower:;
		receiver: selfVar.
	super acceptMessageNode: node]
}