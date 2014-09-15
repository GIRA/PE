accessing-rules
timerRules
"Rules for TimerMorphs"
| selfVar |
selfVar := self variable: 'self'.
^ {
	#startCountdown -> [:node |
		self withCurrentMorph: (self morphFor: node receiver name) do: [| newNode |
			newNode := RBSequenceNode statements: {
				self assignment: (self variable: (self asLegalName: #startTime))
								to: (RBMessageNode
									receiver: selfVar
									selector: #currentTick).
				self assignment: (self variable: (self asLegalName: #isStarted))
								to: (self literal: true).
			}.
			node become: (newNode parent: node parent)]].

	#stopCountdown -> [:node |
		self withCurrentMorph: (self morphFor: node receiver name) do: [| newNode |
			newNode := self assignment: (self variable: (self asLegalName: #isStarted))
								to: (self literal: false).
			node become: (newNode parent: node parent)]].

	#setInterval: -> [:node | | newNode |
		self withCurrentMorph: (self morphFor: node receiver name) do: [
			newNode := self assignment: (self variable: (self asLegalName: #interval)) 
								to: node arguments first.
			node become: (newNode parent: node parent)].
		self visitNode: node].
	
	#getInterval -> [:node | | newNode |
		self withCurrentMorph: (self morphFor: node receiver name) do: [
			newNode := self variable: (self asLegalName: #interval).
			node become: (newNode parent: node parent)].
		self visitNode: node].
	
	#getCurrent -> [:node | | newNode |
		self withCurrentMorph: (self morphFor: node receiver name) do: [
			newNode := self variable: (self asLegalName: #current).
			node become: (newNode parent: node parent)].
		self visitNode: node].
	}