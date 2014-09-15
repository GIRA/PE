holder and card
installFormulaAt: aPoint 
	rule installFormulaAt: aPoint.
	"Cell is not needed where card is"
	(rule cellAt: aPoint) hasCard ifTrue: [
	self removeAt: aPoint].