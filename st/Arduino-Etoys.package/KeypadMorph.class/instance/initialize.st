initialization
initialize
	super initialize.
	self initializeButtons.
	attachmentPoints do: [:each |
		each on: #mouseEnter
			send: #mouseEnter:morph:
			to: self;
			on: #mouseLeave
			send: #mouseLeave:morph:
			to: self]