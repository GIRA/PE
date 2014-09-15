direct commands
dcGetBatteryLevel
	| msg |
	msg := {self class  getBatteryLevel} asByteArray.
	self send: msg replySize: 4