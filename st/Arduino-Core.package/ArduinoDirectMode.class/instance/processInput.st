receiving
processInput
	| data |
	data := port readByteArray.
	data ifEmpty: [^ self].
	data 
		do: [:inByte |
			(self isCommand: inByte)
				ifTrue: [self readCommand: inByte].
			(self isArgument: inByte)
				ifTrue: [self readArgument: inByte].

			argsToRead = 0
				ifTrue: [self executeCommand]]