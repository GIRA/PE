event handling
handleListenEvent: evt
	evt isMouseMove ifFalse: [^ self delete].
	mousePos := evt position.
	mouseStart ifNil: [mouseStart := mousePos]	

