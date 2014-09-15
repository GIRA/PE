holder and card
installFormulaAt: aPoint 
	| cell card |
	(cell _ self cellAt: aPoint) hasCard
		ifTrue: [card _ cell contents.
			card isInstance
				ifTrue: [card holder: self at: aPoint].
			self changed: #cardList.].
	self updatePlan.
	self changed