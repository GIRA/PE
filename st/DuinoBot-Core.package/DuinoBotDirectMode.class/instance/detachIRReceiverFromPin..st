as yet unclassified
detachIRReceiverFromPin: pinNumber
	self send: {self asCommand: self class rqDetachIRReceiver.
				self asArgument: pinNumber} asByteArray.
