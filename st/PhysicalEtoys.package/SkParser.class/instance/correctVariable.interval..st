error correction
correctVariable: proposedVariable interval: spot 
	| receiver argument |
	(self isA1Name: proposedVariable)
		ifTrue: [^ self A1Node: proposedVariable interval: spot].
	receiver _ encoder
				encodeVariable: 'holder'
				sourceRange: spot
				ifUnknown: [encoder undeclared: proposedVariable].
	argument _ encoder encodeLiteral: proposedVariable.
	^ MessageNode new
		receiver: receiver
		selector: #findName:
		arguments: (Array with: argument)
		precedence: 3
		from: encoder"^ encoder global: #Moge -> 1 name: #Hoge"