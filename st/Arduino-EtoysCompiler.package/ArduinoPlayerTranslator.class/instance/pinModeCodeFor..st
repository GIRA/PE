accessing
pinModeCodeFor: mode
	^ true caseOf: {
		[mode isServo] -> ['3'].
		[mode isPwm] -> ['2'].
		[mode isOutput] -> ['1'].
		[mode isInput] -> ['0']
	}