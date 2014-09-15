accessing-rules
timerRules
| selfVar installVariable firstTick |
selfVar := self variable: 'self'.
firstTick := (#firstTick , self hashString) asSymbol.
installVariable := ["If any of these methods is called I need to install this variable"
	(variables at: currentMorph) at: firstTick put: #CUnsignedLong -> (RBMessageNode receiver: selfVar selector: #currentTick)].
^ super timerRules, {
#resetTimer -> [:node | | newNode | "firstTick := self currentTick."
	installVariable value.
	newNode := self assignment: (self variable: (self asLegalName: firstTick)) 
						to: (RBMessageNode receiver: selfVar selector: #currentTick).
	node become: (newNode parent: node parent).
	self visitNode: node].

#getCurrentTick -> [:node | "(self currentTick - firstTick)"
	installVariable value.
	node 
		arguments: {self variable: (self asLegalName: firstTick)};
		selector: #-;
		receiver: (RBMessageNode receiver: selfVar selector: #currentTick). 
	self visitNode: node].
}