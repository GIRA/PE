direct commands
dcGetOutputStatePort: outputPort
	| msg |
	msg := {self class getOutputState .
			outputPort.
			} asByteArray.
	self send: msg replySize: 24