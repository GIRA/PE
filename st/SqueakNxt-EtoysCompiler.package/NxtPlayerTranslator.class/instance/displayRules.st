accessing-rules
displayRules
| selfVar installVariables displayX displayY |
displayX := (#displayX , self hashString) asSymbol.
displayY := (#displayY, self hashString) asSymbol.
installVariables := [:morph | 
	"I need to install both variables if any of these methods is founded (except for #clearScreen and #resetScreen)"
	(variables at: morph) at: displayX put: #Number -> (self currentPlayer getDisplayX).
	(variables at: morph) at: displayY put: #Number -> (self currentPlayer getDisplayY).].
selfVar := self variable: 'self'.
^ {
#setDisplayX: -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self assignment: (self variable: (self asLegalName: displayX)) to: node arguments first.
		node become: (newNode parent: node parent)].
	self visitNode: node].

#getDisplayX -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self variable: (self asLegalName: displayX).
		node become: (newNode parent: node parent)
	].
	self visitNode: node].

#setDisplayY: -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self assignment: (self variable: (self asLegalName: displayY)) to: node arguments first.
		node become: (newNode parent: node parent)].
	self visitNode: node].

#getDisplayY -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self variable: (self asLegalName: displayY).
		node become: (newNode parent: node parent)
	].
	self visitNode: node].

#displayNumber: -> [:node |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		node 
			receiver: selfVar; 
			arguments: node arguments , 
						{self variable: (self asLegalName: displayX). 
						self variable: (self asLegalName: displayY)}; 
			selector: #displayNumber:x:y:].
	super acceptMessageNode: node].

#displayText: -> [:node |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		node
			receiver: selfVar; 
			arguments: node arguments , 
						{self variable: (self asLegalName: displayX). 
						self variable: (self asLegalName: displayY)}; 
			selector: #displayText:x:y:].
	super acceptMessageNode: node].

#clearScreen -> [:node | node receiver: selfVar].

#resetScreen -> [:node | node receiver: selfVar]
}