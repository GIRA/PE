accessing
playTone: frequency duration: duration
	| pin |
	self controlAttaching; reconfigureIfNecessary.
	pin := pins first.
	pin protocol
		playTone: frequency duration: duration pin: pin number