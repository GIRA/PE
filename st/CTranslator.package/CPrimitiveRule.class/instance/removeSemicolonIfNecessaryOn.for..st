applying
removeSemicolonIfNecessaryOn: source for: argIndex
	"Depending on the position of the argument in the rule string, it can be necessary to remove the semicolon after the statement. For now, we only leave the semicolon if the token is surrounded by curly brackets {}.
	For instance, in the rule below
	
	'while({0})\{{1}\}'
	
	The node replacing the {0} token will have its semicolon removed, whereas the {1} won't. Of course, most of the time it won't be necessary to remove any semicolon (if {0} is a literal or a variable, for instance)."
	| index newContents oldContents rule token |
	oldContents := source contents.
	rule := value withBlanksCondensed.
	
	"Do nothing if the source does not end with a semicolon"
	(oldContents size > 2 and: [oldContents endsWith: ';', String cr]) ifFalse: [^self].

	token := '{', argIndex asString ,'}'.
	index := rule findString: token.

	"Do nothing if the token is not in the rule"
	index = 0 ifTrue: [^self].

	"Do nothing if the token is not surrounded by curly brackets"
	((rule at: index - 2 ifAbsent: ['']) asString ,
	(rule at: index - 1 ifAbsent: ['']) asString ,
	(rule at: index + token size ifAbsent: ['']) asString ,
	(rule at: index + token size + 1 ifAbsent: ['']) asString) = '\{\}'
		ifTrue: [^self].

	"Okay, you can now safely remove the semicolon"
	newContents := oldContents allButLast: 2.
	source reset; nextPutAll: newContents.