initialization
initializeEventHandling
	self
		on: #mouseEnter
		send: #mouseEnter:forMorph:
		to: self;		
		on: #mouseLeave
		send: #mouseLeave:forMorph:
		to: self;
		on: #mouseDown
		send: #mouseDown:forMorph:
		to: self.