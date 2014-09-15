visiting
acceptMethodNode: aMethodNode 
	"It goes over the method's arguments adding the #argTypes: pragma if necessary and modifies the selector to have a legal name"
	aMethodNode allArgumentVariables size = 1 
		ifTrue: [| varType | 
			varType := self asValidType: (self currentPlayerClass scripts at: aMethodNode selector) argumentVariables first variableType.
			aMethodNode pragmas: (RBParser parseMethod: 'm <argTypes: #(' , varType , ')>') pragmas].
	"If the method is the #step script from a TimerMorph, it implements its body"
	((timers includes: currentMorph)
	and: [aMethodNode selector = #step])
		ifTrue: [self createTimerStep: aMethodNode].
	"Change its name"
	aMethodNode
		selector: (self asLegalName: aMethodNode selector).
	^ super acceptMethodNode: aMethodNode