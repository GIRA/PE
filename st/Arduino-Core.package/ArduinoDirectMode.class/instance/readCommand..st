receiving
readCommand: inByte
	| command |
	queue flush.
	command := self getCommand: inByte.
	queue push: command.
	self setArgsToReadFor: command.