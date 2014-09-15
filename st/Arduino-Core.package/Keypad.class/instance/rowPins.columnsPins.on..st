attaching
rowPins: rowPinNumbers columnsPins: columnPinNumbers on: anArduino
"
	self rowPins: #(7 6 5) columnPins: #(2 3 4) on: Arduino new.
"
self attachDigitalPins: columnPinNumbers , rowPinNumbers on: anArduino