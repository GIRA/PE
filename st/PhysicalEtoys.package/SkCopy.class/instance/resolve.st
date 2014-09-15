updating
resolve
	| first |
	args isEmpty
		ifTrue: [^ self].
	first _ args first contents.
	args allButFirst
		do: [:each | each contents: first copy]