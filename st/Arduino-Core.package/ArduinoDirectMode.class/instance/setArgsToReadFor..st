receiving
setArgsToReadFor: command
	command caseOf: {
		[self class rsDigitalPort] -> [argsToRead := 2].
		[self class rsAnalogPin] -> [argsToRead := 3]
	} otherwise: [Transcript show: 'Error - command: ', command asString; cr]
