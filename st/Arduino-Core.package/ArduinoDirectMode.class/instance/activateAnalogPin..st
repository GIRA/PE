analog pins
activateAnalogPin: pinNumber
	self send: {self asCommand: self class rqActivateAnalogPin.
				self asArgument: pinNumber.
				self asArgument: 1} asByteArray.
