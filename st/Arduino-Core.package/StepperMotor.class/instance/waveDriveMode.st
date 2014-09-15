step modes
waveDriveMode
	| values |
	values := (self waveDriveModeSteps at: currentStep \\ 4 + 1).
	1 to: 4 do: [:i | (pins at: i) value: (values at: i)]