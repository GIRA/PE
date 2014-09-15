initialization
initializeArgs
	args
		ifNil: [args _ #()]
		ifNotNil: [args
				do: [:each | each class = SkValueCell
						ifTrue: [each modelRemoveDependent: self]]]