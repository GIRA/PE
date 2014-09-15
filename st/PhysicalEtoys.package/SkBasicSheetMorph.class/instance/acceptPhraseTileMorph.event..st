drag and drop
acceptPhraseTileMorph: aMorph event: evt 
	| setter getter |
	getter _ aMorph operatorTile operatorOrExpression.
	setter _ ('set'
				, (getter allButFirst: 3) , ':') asSymbol.
	self model
		modelAt: (self screenToCell: aMorph topLeft)
		for: aMorph actualObject
		getter: getter
		setter: setter.
	^ true