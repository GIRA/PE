as yet unclassified
loop
	"(self isDivisible: c by: 2)"
	(c isDivisibleBy: 2)
		ifTrue: [self digitalWrite: 15 value: HIGH]
		ifFalse: [self digitalWrite: 15 value: LOW].
	c := c + 1.
	self delay: 1000