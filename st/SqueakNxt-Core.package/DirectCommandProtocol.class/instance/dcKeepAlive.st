direct commands
dcKeepAlive
	| msg |
	msg := {self class keepAlive
			} asByteArray.
	self send: msg replySize: 6