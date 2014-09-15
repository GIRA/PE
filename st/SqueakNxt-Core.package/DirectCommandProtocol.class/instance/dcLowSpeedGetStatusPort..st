direct commands
dcLowSpeedGetStatusPort: lsPort
	| msg |
	lsCurrentPort := lsPort.
	msg := {self class lsGetStatus.
			lsPort
			} asByteArray.
	self send: msg replySize: 3