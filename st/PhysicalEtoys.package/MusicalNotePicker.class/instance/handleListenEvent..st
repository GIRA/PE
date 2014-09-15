accessing
handleListenEvent: evt
	(evt isMouseMove or: [self containsPoint: evt position])
		ifFalse: [^ self delete].
