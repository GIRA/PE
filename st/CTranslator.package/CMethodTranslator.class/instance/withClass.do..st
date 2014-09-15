translating
withClass: aClass do: aBlock
	"Replaces the class just for running the block, then it goes back to the old class.
	Very useful for translating inlined methods, which needs to use the same source but change the current class"
	| old |
	old := class.
	class := aClass.
	aBlock value.
	class := old