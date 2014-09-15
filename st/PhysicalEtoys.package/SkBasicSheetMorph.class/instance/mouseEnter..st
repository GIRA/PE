event handling
mouseEnter: evt 
	| hand tile |
	hand _ evt hand.
	hand submorphs size = 1
		ifFalse: [^ self].
	tile _ hand firstSubmorph renderedMorph.
	(self wantsDroppedMorph: tile event: evt)
		ifFalse: [^ self].
	self
		startStepping: #trackDropZones
		at: Time millisecondClockValue
		arguments: nil
		stepTime: 20