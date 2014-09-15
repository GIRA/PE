structure
beAlone
	self parent
		ifNotNil: [self parent removeAt: self ruleName]