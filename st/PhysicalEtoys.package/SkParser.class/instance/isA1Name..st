testing
isA1Name: aString 
	" 
	(self new isA1Name: 'A1') = true. 
	(self new isA1Name: 'XYZ123') = true. 
	(self new isA1Name: '123') = false. 
	(self new isA1Name: 'ABC') = false. 
	(self new isA1Name: 'Abc') = false. 
	(self new isA1Name: 'abc') = false. 
	(self new isA1Name: 'Hello12') = false. 
	"
	| begin end number |
	begin _ aString indexOfAnyOf: ($A to: $Z) asCharacterSet startingAt: 0.
	begin isZero
		ifTrue: [^ false].
	end _ aString indexOfAnyOf: ($A to: $Z) asCharacterSet complement startingAt: begin.
	end isZero
		ifTrue: [^ false].
	number _ (aString allButFirst: end - 1).
	^ (number anySatisfy: [:c | c isDigit not]) not