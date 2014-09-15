utilities
avoidNameClash
"
Utility method. Compiles an empty method in SqueakNxtPlayer for each nxc primitive rule selector. This way we prevent the user from creating a script with an invalid name.
Execute this if the list of rules changes."
"
self avoidNameClash.
"
self new allPrimitiveRulesSelectors, #(main loop setup) 
	select: [:each | (each isKeyword and: [each numArgs = 1]) or: [each isUnary]]
	thenDo: [:selector | | method |
	method := String streamContents: [:stream |
		selector isUnary
			ifTrue: [stream nextPutAll: selector]
			ifFalse: [selector keywords doWithIndex: [:each :index | stream nextPutAll: each; space; nextPutAll: 'obj', index asString; space]].
		stream cr; nextPutAll: '"This method''s name is a nxc reserved word. I declared it just to prevent the user from creating a script with this same name"'
		].
	"Warning, we don't want to override an existing method"
	(SqueakNxtPlayer canUnderstand: selector)
		ifFalse: [SqueakNxtPlayer compile: method classified: #'*squeaknxt-etoyscompiler-nxc commands']
].