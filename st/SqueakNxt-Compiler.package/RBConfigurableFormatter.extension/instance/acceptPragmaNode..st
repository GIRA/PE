*squeaknxt-compiler
acceptPragmaNode: aPragmaNode
	"Fixed to parse pragmas correctly"
	codeStream nextPut: $<.
	self 
		formatSelectorAndArguments: aPragmaNode 
		firstSeparator: [ 
			aPragmaNode isBinary
				ifTrue: [ self space ] ]
		restSeparator: [ self space ].
	codeStream nextPut: $>