accessing-rules
buttonRules
| selfVar |
selfVar := self variable: 'self'.
^ {
#getIsPressedEnter -> [:node | 
	node arguments: {self literal: 3};
		 selector: #buttonPressed:;
		receiver: selfVar.
	super acceptMessageNode: node].

#getIsPressedLeft -> [:node | 
	node arguments: {self literal: 2};
		 selector: #buttonPressed:;
		receiver: selfVar.
	super acceptMessageNode: node].

#getIsPressedRight -> [:node | 
	node arguments: {self literal: 1};
		 selector: #buttonPressed:;
		receiver: selfVar.
	super acceptMessageNode: node]
}