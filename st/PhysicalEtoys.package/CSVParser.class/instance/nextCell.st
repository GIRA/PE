parsing
nextCell
	^ stream peek = $"
		ifTrue: [self nextEnclosedCell]
		ifFalse: [self nextNormalCell]