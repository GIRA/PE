updating
collectDependentsForCard: aPoint 
	| points dict |
	self flag: #TODO.
	"It has a BAD assumption"
	points _ self referenceAt: aPoint.
	dict _ Dictionary new.
	^ points size > 1
		ifTrue: [dict at: points first put: {aPoint} asSet; yourself]