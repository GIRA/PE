error correction
A1Node: proposedVariable interval: spot 
	| receiver argument |
	receiver _ encoder
				encodeVariable: 'holder'
				sourceRange: spot
				ifUnknown: [encoder undeclared: proposedVariable].
	argument _ encoder
				encodeLiteral: (self cellPositionOf: proposedVariable).
	^ MessageNode new
		receiver: receiver
		selector: #at:
		arguments: (Array with: argument)
		precedence: 3
		from: encoder