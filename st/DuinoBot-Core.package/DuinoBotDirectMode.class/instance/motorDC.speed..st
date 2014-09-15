as yet unclassified
motorDC: motorIndex speed: pinValue
	| speed |
	speed := (1.275 * pinValue + 127.5) rounded.
	self send: {self asCommand: self class rqMotorDC.
						self asArgument: motorIndex.
						self asArgument: (speed bitAnd: 2r01111111).
						self asArgument: (speed bitAnd: 2r10000000) >> 7} asByteArray