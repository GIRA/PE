testing
isValidReceiver: aParseNode 
	"If the parse node is a variable it *must* be one of the valid morphs
	or an argument variable. I'm not sure about this, actually so we might 
	have to test it more"
	| res |
	aParseNode isVariable
		ifTrue: [res := (aParseNode methodNode allArgumentVariables
							anySatisfy: [:each | each = aParseNode name])
						or: [(self morphFor: aParseNode name) notNil
						or: [(variables at: currentMorph) keys 
							anySatisfy: [:each | (self asLegalName: each) = aParseNode name]]].
			self flag: #Richo.
			^ res].
	^ true