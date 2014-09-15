initialize-release
initialize
	super initialize.
	motorPins := Dictionary newFrom: ((0 to: 1)
				collect: [:i | i -> (DuinoBotMotorPin on: self number: i)])