digital pins
deactivateDigitalPort: portIndex
	self send: {self asCommand: self class rqActivateDigitalPort.
				self asArgument: portIndex.
				self asArgument: 0} asByteArray.
