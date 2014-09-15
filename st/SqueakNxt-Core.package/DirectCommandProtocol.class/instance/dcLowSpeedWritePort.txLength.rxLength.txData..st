direct commands
dcLowSpeedWritePort: lsPort txLength: txDataLength rxLength: rxDataLength txData: txData
	| msg |
	lsCurrentPort := lsPort.
	lsBytesReady at: lsPort + 1 put: 0.

	msg := {self class lsWrite.
			lsPort.
			txDataLength.
			rxDataLength.		
			} asByteArray,
			txData asByteArray.
	self send: msg replySize: 0