attaching
attachDigitalPins: anArray on: anArduino 
"
	self attachDigitalPins: #(1 2 3 4) on: Arduino new.
"
	self setPins: (anArray collect: [:pinNumber| anArduino digitalPin: pinNumber]).