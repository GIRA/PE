accessing-rules
soundRules
| selfVar installVariables soundVolume soundDuration |
soundVolume := (#soundVolume, self hashString) asSymbol.
soundDuration := (#soundDuration, self hashString) asSymbol.
installVariables := [:morph | "I need to install both variables if any of these methods is founded (except for #stopPlaying)"
	(variables at: morph) at: soundVolume put: #Number -> (self currentPlayer getVolume).
	(variables at: morph) at: soundDuration put: #Number -> (self currentPlayer getDuration).].
selfVar := self variable: 'self'.
^ {
#setVolume: -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self assignment: (self variable: (self asLegalName: soundVolume)) 
							to: node arguments first.
		node become: (newNode parent: node parent)].
	self visitNode: node].

#getVolume -> [:node | | newNode |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		newNode := self variable: (self asLegalName: soundVolume).
		node become: (newNode parent: node parent)].
	self visitNode: node].

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
					self variable: (self asLegalName: soundVolume).
					self literal: false};
		  selector: #playTone:duration:volume:repeat:].	
	super acceptMessageNode: node].

#playSoundFile: -> [:node | 
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		node receiver: selfVar;
		  arguments: {RBMessageNode receiver: node arguments first selector: #, arguments: {self literal: '.rso'}. 
						self variable: (self asLegalName: soundVolume). 
						self literal: false};
		  selector: #playFile:volume:repeat:].	
	super acceptMessageNode: node].

#playNote: -> [:node |
	self withCurrentMorph: (self morphFor: node receiver name) do: [
		installVariables value: currentMorph.
		node receiver: selfVar;
		  arguments: {self literal: (PEUtilities frequencyFor: node arguments first value ifAbsent: [0]). 
						self variable: (self asLegalName: soundDuration). 
						self variable: (self asLegalName: soundVolume). 
						self literal: false};
		  selector: #playTone:duration:volume:repeat:].	
	super acceptMessageNode: node].

#stopPlaying -> [:node | "For some reason I don't yet understand, if I don't add a Wait(1) the StopSound() doesn't work"
	node arguments: {self literal: 'Wait(1); StopSound();'}; 
		selector: #nxc:; 
		receiver: selfVar.
	super acceptMessageNode: node].
}