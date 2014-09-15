initialize-release
initialize
	digitalPins := Dictionary newFrom: ((2 to: 13)
				collect: [:i | i-> (ArduinoDigitalPin on: self number: i)]).
	analogPins :=Dictionary newFrom: ( (0 to: 5)
				collect: [:i | i -> (ArduinoAnalogPin on: self number: i)])