visiting
acceptLiteralNode: aLiteralNode
	| value |
	value := aLiteralNode value.
	value isFloat 
		ifTrue: [source nextPutAll: (value printShowingAtMostDecimalPlaces: 12).
			^ self].
	value isString 
		ifTrue: [source nextPut: $"; nextPutAll: value asString; nextPut: $".
			^ self].
	value isNil
		ifTrue: [source nextPutAll: 'NULL'.
			^ self].
	source nextPutAll: value asString