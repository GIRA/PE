event handling
mouseDown: evt 
	evt yellowButtonPressed
		ifTrue: [^ self invokeMenu: evt].
	owner
		ifNotNil: [owner mouseDown: evt]