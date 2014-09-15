direct commands
dcResetMotorPositionPort: outputPort relative: aBoolean
	| msg |
	msg := {self class resetMotorPosition.
			outputPort.
			(aBoolean ifTrue: [1] ifFalse: [0])
			} asByteArray.
	self send: msg replySize: 0