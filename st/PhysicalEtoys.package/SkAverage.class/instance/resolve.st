updating
resolve
	| elements |
	args size < 2 ifTrue: [^self].
	elements _ args allButFirst
			collect: [:each | each contents].
	args first contents: (elements sum) / elements size