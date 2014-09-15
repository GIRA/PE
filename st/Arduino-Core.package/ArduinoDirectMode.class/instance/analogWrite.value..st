digital pins
analogWrite: pinIndex value: pinValue
	self send: {self asCommand: self class rqAnalogWrite.
				self asArgument: pinIndex.
				self asArgument: (pinValue bitAnd: 2r01111111).
				self asArgument: (pinValue bitAnd: 2r10000000) >> 7} asByteArray