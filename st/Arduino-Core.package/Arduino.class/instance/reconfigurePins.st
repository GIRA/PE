initialize-release
reconfigurePins
	self type digitalPins
		ifNotNil: [ digitalPins := Dictionary newFrom: (self type digitalPins collect: [ :i | i -> (ArduinoDigitalPin on: self number: i) ]) ].
	self type analogPins
		ifNotNil: [ analogPins := Dictionary newFrom: (self type analogPins collect: [ :i | i -> (ArduinoAnalogPin on: self number: i) ]) ].
	digitalPins values , analogPins values
		do: [ :each | 
			each refresh.
			(Delay forMilliseconds: 10) wait ]