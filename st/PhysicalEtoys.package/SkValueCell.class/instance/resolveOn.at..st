updating
resolveOn: sheet at: aPoint
	"Execute card if I have already had card
	Execute formula if I doesn't have card"
	self hasFormula
		ifTrue: [self hasCard
				ifTrue: [self resolveCardOn: sheet at: aPoint]
				ifFalse: [self resolveFormulaOn: sheet at: aPoint]]