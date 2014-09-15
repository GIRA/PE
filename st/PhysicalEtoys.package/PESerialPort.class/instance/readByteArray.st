input/output
readByteArray
	| buffer bytesRead |
	portNumber isNil ifTrue: [^ #[]].
	bytesRead := self plugin readPort: portNumber into: (buffer := ByteArray new: 1024).
	^ buffer allButLast: (1024 - bytesRead)
	