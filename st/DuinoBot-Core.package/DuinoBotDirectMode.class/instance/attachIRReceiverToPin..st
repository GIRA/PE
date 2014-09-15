as yet unclassified
attachIRReceiverToPin: pinNumber
	self send: {self asCommand: self class rqAttachIRReceiver.
				self asArgument: pinNumber} asByteArray.
