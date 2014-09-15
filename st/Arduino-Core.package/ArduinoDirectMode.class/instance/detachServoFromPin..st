servos
detachServoFromPin: pinNumber
	self send: {self asCommand: self class rqDetachServo.
				self asArgument: pinNumber} asByteArray.
