direct commands
dcStopProgram
	| msg |
	msg := {self class stopProgram} asByteArray.
	self send: msg replySize: 0