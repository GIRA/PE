receiving
executeAnalogPin
	| pin value1 value2 |
	pin := queue pop.
	value1 := queue pop.
	value2 := queue pop.
	analogPins at: pin put: (value1 bitOr: (value2 << 7))