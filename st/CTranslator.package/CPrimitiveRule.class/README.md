A CPrimitiveRule is is a very simple way of defining a rule to translate a smalltalk message to a c primitive. Every function (such as "printf" or "system"), every operator (such as "+" or "=="), and every control structure (such as "if", "while", or "repeat") is considered to be a c primitive. To define a method as a c primitive you should use the #c: pragma (look at the senders of #c: for examples).

To create a rule simply send '#as: CPrimitiveRule' to a well formed string. For example:

	'NumOut({2}, {3}, {1})' as: CPrimitiveRule.
	'({0} + {1})' as: CPrimitiveRule.
	'if({0})\{{1}\}else\{{2}\}' as: CPrimitiveRule.
	
Once a rule is created it can be applied to a message node using a translator by sending #applyTo:using:. This mehod will then replace all '{n}' in the string with the translated arguments ({0} represents the receiver).

Instance Variables
	value:		<String>

value
	- The string that defines how to apply the rule.
