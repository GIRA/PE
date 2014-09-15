direct commands
dcResetInputScaledValuePort: inputPort
	| msg |
	msg := {self class resetInputScaledValue .
			inputPort.
			} asByteArray.
	self send: msg replySize: 0