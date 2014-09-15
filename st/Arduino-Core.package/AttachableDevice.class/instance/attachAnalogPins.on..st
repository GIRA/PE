attaching
attachAnalogPins: anArray on: anArduino 
"
	self attachAnalogPins: #(1 2 3 4) on: Arduino new.
"
	self setPins: (anArray collect: [:pinNumber| anArduino analogPin: pinNumber]).