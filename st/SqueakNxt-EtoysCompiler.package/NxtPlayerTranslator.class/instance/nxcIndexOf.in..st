accessing
nxcIndexOf: aVariableNode in: aCollection
	"Basically, it tries to determine if the variable node is representing an object in the collection. If it is, it returns its index as a literal node (zero based for nxc compatibility)"
	| index |
	aVariableNode name = 'self' 
		ifTrue: [(index := aCollection indexOf: currentMorph) = 0
			ifTrue: [index := nil]]
		ifFalse: [aCollection doWithIndex: [:morph :i| 
(morph notNil and: [morph assuredPlayer uniqueNameForReference = aVariableNode name]) ifTrue: [index := i. thisContext return: nil]]].
	"^ index isNil ifTrue: [self error: 'Index not found'] ifFalse: [self literal: index - 1]"
	self assert: index notNil.
	^ self literal: index - 1