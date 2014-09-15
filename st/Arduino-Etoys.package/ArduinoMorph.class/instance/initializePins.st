initialize-release
initializePins
	| pos |
	pos := 104 @ 125.
	0
		to: 5
		do: [:i | 
			self
				addMorph: ((ArduinoAnalogPinMorph
						on: (arduino analogPin: i))
						center: self center + pos;
						setBalloonText: ('Analog pin {1}' translated format: {i})).
			pos := pos x + 13 @ pos y].
	pos := -14 @ -124.
	13
		to: 8
		by: -1
		do: [:i | 
			self
				addMorph: ((ArduinoDigitalPinMorph
						on: (arduino digitalPin: i))
						center: self center + pos;
						setBalloonText: ('Digital pin {1}' translated format: {i})).
			pos := pos x + 13 @ pos y].
	pos := 78 @ -124.
	7
		to: 2
		by: -1
		do: [:i | 
			self
				addMorph: ((ArduinoDigitalPinMorph
						on: (arduino digitalPin: i))
						center: self center + pos;
						setBalloonText: ('Digital pin {1}' translated format: {i})).
			pos := pos x + 13 @ pos y].
	pos := 156 @ -124.