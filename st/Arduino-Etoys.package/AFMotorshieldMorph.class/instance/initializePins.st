initializing
initializePins
	| pos |
	pos := 83 @ 125.
	0
		to: 5
		do: [:i | 
			self
				addMorph: ((ArduinoAnalogPinMorph
						on: (arduino analogPin: i))
						center: self center + pos;
						setBalloonText: ('Analog pin {1}' translated format: {i})).
			pos := pos x + 13 @ pos y].
	self
		addMorph: ((ArduinoDigitalPinMorph
				on: (arduino digitalPin: 13))
				center: self center + (-33 @ -124);
				setBalloonText: ('Digital pin {1}' translated format: {13})).
	self
		addMorph: ((ArduinoDigitalPinMorph
				on: (arduino digitalPin: 10))
				center: self center + (-137 @ -122);
				setBalloonText: ('Digital pin {1}' translated format: {10})).
	self
		addMorph: ((ArduinoDigitalPinMorph
				on: (arduino digitalPin: 9))
				center: self center + (-137 @ -109);
				setBalloonText: ('Digital pin {1}' translated format: {9})).
	self
		addMorph: ((ArduinoDigitalPinMorph
				on: (arduino digitalPin: 2))
				center: self center + (122 @ -124);
				setBalloonText: ('Digital pin {1}' translated format: {2}))