direct commands
dcPlayToneFrequency: freq duration: milliseconds
	| msg |
	msg := {self class playTone .
			(freq \\ 256).
			(freq // 256).
			(milliseconds \\ 256).
			(milliseconds // 256)
			 } asByteArray.
	self send: msg replySize: 0