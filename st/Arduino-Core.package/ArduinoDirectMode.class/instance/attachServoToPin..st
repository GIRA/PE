servos
attachServoToPin: pinNumber
	self send: {self asCommand: self class rqAttachServo.
				self asArgument: pinNumber} asByteArray.
