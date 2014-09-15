initializing
initializeSpecialPins
	self
		addMorph: ((AFMotorPinMorph
				on: (arduino motorPin: 1))
				center: self center + (-180 @ 0);
				setBalloonText: ('Motor pin {1}' translated format: {1})).
	self
		addMorph: ((AFMotorPinMorph
				on: (arduino motorPin: 2))
				center: self center + (-180 @ 75);
				setBalloonText: ('Motor pin {1}' translated format: {2})).
	self
		addMorph: ((AFMotorPinMorph
				on: (arduino motorPin: 4))
				center: self center + (180 @ -32);
				setBalloonText: ('Motor pin {1}' translated format: {4})).
	self
		addMorph: ((AFMotorPinMorph
				on: (arduino motorPin: 3))
				center: self center + (180 @ 40);
				setBalloonText: ('Motor pin {1}' translated format: {3}))