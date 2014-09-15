direct commands
dcStopSoundPlayback
	| msg |
	msg := {self class stopSoundPlayback} asByteArray.
	self send: msg replySize: 0