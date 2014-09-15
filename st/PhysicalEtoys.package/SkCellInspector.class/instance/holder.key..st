accessing
holder: holder key: key 
	| cell context |
	self holder
		ifNotNil: [self holder removeDependent: self].
	holder addDependent: self.
	cell _ holder cellAt: key.
	context _ MethodContext
				sender: holder
				receiver: cell
				method: SkNullCell >> #resolveContextOn:at:
				arguments: {holder. key}.
	self inspect: context