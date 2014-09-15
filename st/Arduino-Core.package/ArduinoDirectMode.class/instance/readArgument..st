receiving
readArgument: inByte
	| argument |
	argument := self getArgument: inByte.
	queue push: argument.
	argsToRead := argsToRead - 1