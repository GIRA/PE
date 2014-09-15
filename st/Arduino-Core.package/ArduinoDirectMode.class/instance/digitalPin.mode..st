digital pins
digitalPin: pinIndex mode: pinMode
	"Digital ports should always be active"
	pinIndex <= 7
		ifTrue: [self activateDigitalPort: 0]
		ifFalse: [self activateDigitalPort: 1].
	self send: {self asCommand: self class rqDigitalPinMode.
				self asArgument: pinIndex.
				self asArgument: pinMode} asByteArray.
