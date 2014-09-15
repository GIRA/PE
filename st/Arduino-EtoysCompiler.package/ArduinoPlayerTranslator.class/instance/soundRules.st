accessing-rules
soundRules
| selfVar installVariables soundDuration |
soundDuration := (#soundDuration, self hashString) asSymbol.
installVariables := [:morph |
	(variables at: morph) at: soundDuration put: #Number -> (self currentPlayer getDuration)].
selfVar := self variable: 'self'.
^ {
#setDuration: -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self assignment: (self variable: (self asLegalName: soundDuration)) 
							to: node arguments first.
		node become: (newNode parent: node parent)].
	self visitNode: node].

#getDuration -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self variable: (self asLegalName: soundDuration).
		node become: (newNode parent: node parent)].
	self visitNode: node].

#playTone: -> [:node | 
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		node receiver: selfVar;
		  arguments: node arguments, 
					{self variable: (self asLegalName: soundDuration). 
					self literal: (self arduinoIndexOf: node receiver)};
		  selector: #playTone:duration:pin:].	
	super acceptMessageNode: node].

#playNote: -> [:node | 
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		node receiver: selfVar;
		  arguments: {self literal: (PEUtilities frequencyFor: node arguments first value ifAbsent: [0]).
					self variable: (self asLegalName: soundDuration). 
					self literal: (self arduinoIndexOf: node receiver)};
		  selector: #playTone:duration:pin:].	
	super acceptMessageNode: node].
}