initialize-release
initialize
	super initialize.
	motorPins := Dictionary
		newFrom: ((1 to: 4) collect: [:i | 
			i -> (AFMotorPin on: self number: i)])