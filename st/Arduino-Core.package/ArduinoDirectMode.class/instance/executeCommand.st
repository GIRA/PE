receiving
executeCommand
	| command |
	command := queue pop.
	command caseOf: {
		[self class rsDigitalPort] -> [self executeDigitalPort].
		[self class rsAnalogPin] -> [self executeAnalogPin].
		[self class rsVersion] -> [self executeVersion]
	} otherwise: [Transcript show: ('Invalid command: {1}' format:  {command}); cr].
	argsToRead := -1.