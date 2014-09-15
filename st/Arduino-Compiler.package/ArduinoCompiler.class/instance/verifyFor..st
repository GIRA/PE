verifying
verifyFor: arduinoType
	self compileFor: arduinoType.
	^ self verifyFor: arduinoType clean: false