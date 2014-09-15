receiving
executeDigitalPort
	| digitalPort value |
	digitalPort := queue pop.
	value := queue pop.
	digitalPins at: 2 + (6 * digitalPort) put: (value bitAnd: 2r1).
	digitalPins at: 3 + (6 * digitalPort) put: ((value >> 1) bitAnd: 2r1).
	digitalPins at: 4 + (6 * digitalPort) put: ((value >> 2) bitAnd: 2r1).
	digitalPins at: 5 + (6 * digitalPort) put: ((value >> 3) bitAnd: 2r1).
	digitalPins at: 6 + (6 * digitalPort) put: ((value >> 4) bitAnd: 2r1).
	digitalPins at: 7 + (6 * digitalPort) put: ((value >> 5) bitAnd: 2r1)