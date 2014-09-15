step modes
halfStepMode
	| values |
	values := (self halfStepModeSteps at: currentStep \\ 8 + 1).
	1 to: 4 do: [:i | (pins at: i) value: (values at: i)]