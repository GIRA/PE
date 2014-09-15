digital pins
activateDigitalPort: portIndex
	self send: {self asCommand: self class rqActivateDigitalPort.
				self asArgument: portIndex.
				self asArgument: 1} asByteArray.
