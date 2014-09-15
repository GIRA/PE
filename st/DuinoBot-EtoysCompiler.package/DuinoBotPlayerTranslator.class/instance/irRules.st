accessing-rules
irRules
| selfVar |
selfVar := self variable: 'self'.
^ {
#getRemoteCode -> [:node | 
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		node receiver: selfVar;
		  arguments: 	{self literal: (self arduinoIndexOf: node receiver)};
		  selector: #getIRCode:].	
	super acceptMessageNode: node].
}