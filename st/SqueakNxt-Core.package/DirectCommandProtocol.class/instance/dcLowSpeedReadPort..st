direct commands
dcLowSpeedReadPort: lsPort
	| msg |
	lsCurrentPort := lsPort.
	msg := {self class lsRead .
			lsPort.
			} asByteArray.
	self send: msg replySize: 19