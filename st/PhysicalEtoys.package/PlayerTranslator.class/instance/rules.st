accessing-rules
rules
	"Should return a dictionary whose keys are the message selectors and whose 
	values are blocks accepting a node as a parameter. These blocks are the rules
	that modify the parse tree of the player scripts.
	Most of the time, all that is needed is to rename the selector, change the receiver 
	to 'self' and set the correct list of arguments. But the rules can be a little more 
	complicated sometimes"
	^ (self scriptingRules,
		self timerRules)
		 as: Dictionary