accessing
arduinoIndexOf: aVariableNode
	"First we look in the digital pins"	
	| index |
	index := self arduinoIndexOf: aVariableNode in: digitalPins.
	index notNil ifTrue: [^ index].
	"If we haven't found the variable yet we look in the analog pins"
	index := self arduinoIndexOf: aVariableNode in: analogPins.
	self assert: index notNil.
	^ index + 14
