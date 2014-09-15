servos
servoOnPin: pinNumber angle: degrees
	self send: {self asCommand: self class rqServoAngle.
				self asArgument: pinNumber.
				self asArgument: (degrees bitAnd: 2r01111111).
				self asArgument: (degrees bitAnd: 2r10000000) >> 7} asByteArray.
