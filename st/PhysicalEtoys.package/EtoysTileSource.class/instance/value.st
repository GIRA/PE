evaluating
value
	| tile |
	^ [tile := submorphs first.
		Compiler
			evaluate: tile codeString
			for: (tile associatedPlayer ifNil: [self assuredPlayer])
			logged: false]
		on: Error
		do: [0]