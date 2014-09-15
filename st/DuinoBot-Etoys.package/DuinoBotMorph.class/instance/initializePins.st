initialize
initializePins
	| pos |
	pos := -27@93.
	6
		timesRepeat: [self
				addMorph: (ArduinoPinMorph justASketch center: self center + pos).
			pos := pos x + 13 @ pos y].
	pos :=  65@93.
	0
		to: 5
		do: [:i | 
			self
				addMorph: ((DuinoBotAnalogPinMorph
						on: (arduino analogPin: i))
						center: self center + pos;
						setBalloonText: ('Analog pin {1}' translated format: {i})).
			pos := pos x + 13 @ pos y].
	pos := -79 @ -156.
	2
		timesRepeat: [self
				addMorph: (ArduinoPinMorph justASketch center: self center + pos).
			pos := pos x + 13 @ pos y].
	pos := -53@-156.
	13
		to: 8
		by: -1
		do: [:i | 
			self
				addMorph: ((DuinoBotDigitalPinMorph
						on: (arduino digitalPin: i))
						center: self center + pos;
						setBalloonText: ('Digital pin {1}' translated format: {i})).
			pos := pos x + 13 @ pos y].
	pos := 39@-156.
	7
		to: 2
		by: -1
		do: [:i | 
			self
				addMorph: ((DuinoBotDigitalPinMorph
						on: (arduino digitalPin: i))
						center: self center + pos;
						setBalloonText: ('Digital pin {1}' translated format: {i})).
			pos := pos x + 13 @ pos y].
	pos := 117@-156.
	1
		to: 0
		by: -1
		do: [:i | 
			self
				addMorph: (ArduinoPinMorph justASketch center: self center + pos).
			pos := pos x + 13 @ pos y]