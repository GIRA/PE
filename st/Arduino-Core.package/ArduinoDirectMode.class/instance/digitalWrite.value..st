digital pins
digitalWrite: pinIndex value: pinValue
	self send: {self asCommand: self class rqDigitalWrite.
				self asArgument: pinIndex.
				self asArgument: pinValue} asByteArray