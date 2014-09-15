direct commands
dcGetInputValuesPort: inputPort
	| msg |
	msg := {self class getInputValues.
			inputPort.
			} asByteArray.
	self send: msg replySize: 15