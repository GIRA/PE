digital pins
digitalPin: pinNumber mode: mode
	"Digital ports should always be active"
	pinNumber <= 7
		ifTrue: [self activateDigitalPort: 0]
		ifFalse: [self activateDigitalPort: 1].
	(pinNumber > (self boardType digitalPins last) and: [mode = 0])
		ifTrue: ["Analog pins should not be set as INPUT but ANALOG"
			self pin: pinNumber mode: FirmataConstants pinModeAnalog]
		ifFalse: [self pin: pinNumber mode: mode]