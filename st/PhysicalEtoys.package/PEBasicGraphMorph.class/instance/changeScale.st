scale
changeScale
	| minValue maxValue asNumber |
	asNumber := [:string |[| result |
		result := Compiler evaluate: string.
		result isNumber
			ifTrue: [result]
			ifFalse: [string asNumber]]
			on: SyntaxErrorNotification
			do: [:ign | 	string asNumber]].
	minValue := UIManager request: 'Min value:' translated initialAnswer: self minVal asString.
	minValue isEmpty ifTrue: [^ self].
	[self minVal: (asNumber value: minValue)] on: Error do: ["ignore"].
	maxValue := UIManager request: 'Max value:' translated initialAnswer: self maxVal asString.
	maxValue isEmpty ifTrue: [^ self].
	[self maxVal: (asNumber value: maxValue)] on: Error do: ["ignore"].