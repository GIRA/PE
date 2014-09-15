accessing-rules
scriptingRules
"For the tiles that receive a script name as a parameter, it first checks that the script actually belongs to the current morph, and if it doesn't then it just turns the node into a noop"
^ {
#startScript: -> [:node |
	self withCurrentMorph: (self morphFor: node receiver name) do: [| scriptName newNode |
		scriptName := node arguments first value.
		self assert: ((scriptSelectors at: currentMorph) includes: scriptName).
		newNode := self assignment: (self variable: (self asLegalScriptFlag: scriptName))
							to: (self literal: true).
		node become: (newNode parent: node parent)]].

#stopScript: -> [:node |
	self withCurrentMorph: (self morphFor: node receiver name) do: [| scriptName newNode |
		scriptName := node arguments first value.
		self assert: ((scriptSelectors at: currentMorph) includes: scriptName).
		newNode := self assignment: (self variable: (self asLegalScriptFlag: scriptName))
							to: (self literal: false).
		node become: (newNode parent: node parent)]].

#pauseScript: -> [:node | "Do the same as #stopScript:"
	(self rules at: #stopScript:) value: node].

#doScript: -> [:node | | args | args := node arguments. "This is the same as calling the script directly"
	node arguments: #(); selector: args first value.
	self visitNode: node "We need to visit the node again to fix the selector and the receiver"]
}