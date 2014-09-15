support
uniqueNameLike: aString satisfy: aBlock
"
self new uniqueNameLike: 'test' satisfy: [:s | (#('test' 'test1' 'test2') includes: s) not] 
self new uniqueNameLike: 'test1' satisfy: [:s | (#('test' 'test1' 'test2') includes: s) not] 
"
	| try |
	(aBlock value: aString)
		ifTrue: [^ aString]
		ifFalse: [1
				to: 999999
				do: [:i | 
					try _ aString splitInteger first , i printString.
					(aBlock value: try)
						ifTrue: [^ try]]]