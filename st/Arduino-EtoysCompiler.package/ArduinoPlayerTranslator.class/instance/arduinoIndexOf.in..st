accessing
arduinoIndexOf: aVariableNode in: aCollection
	"Basically, it tries to determine if the variable node is representing an object in the collection. If it is, it returns its index"
	| index findIndex |
	findIndex := [:morph || ret |
		ret := nil.
		aCollection keysAndValuesDo: [:key :value |
			(value includes: morph)
				ifTrue: [ret := key]
			].
		ret].
	aVariableNode name = 'self' 
		ifTrue: [index := findIndex value: currentMorph]
		ifFalse: [index := findIndex value: (self morphFor: aVariableNode name)].
	"^ index isNil ifTrue: [self error: 'Index not found'] ifFalse: [index]."
	^ index
