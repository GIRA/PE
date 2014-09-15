accessing
sourceCode
	| code |
	code := block sourceCode.
	^ code copyFrom: (code indexOf: $[)
			+ 1 to: (code lastIndexOf: $])
			- 1