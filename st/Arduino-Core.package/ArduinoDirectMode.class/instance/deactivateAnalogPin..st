analog pins
deactivateAnalogPin: pinNumber
	self send: {self asCommand: self class rqActivateAnalogPin.
				self asArgument: pinNumber.
				self asArgument: 0} asByteArray.
