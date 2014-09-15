scale
changeScale2
	| minValue maxValue |
	minValue := UIManager request: 'Min value:' translated initialAnswer: self minVal asString.
	minValue isEmpty ifTrue: [^ self].
	[self minVal: minValue asNumber] on: Error do: ["ignore"].
	maxValue := UIManager request: 'Max value:' translated initialAnswer: self maxVal asString.
	maxValue isEmpty ifTrue: [^ self].
	[self maxVal: maxValue asNumber] on: Error do: ["ignore"].