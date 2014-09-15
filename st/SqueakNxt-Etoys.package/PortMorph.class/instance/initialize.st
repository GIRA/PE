initializing
initialize
	super initialize.
	self
		color: (Color gray mixed: 0.5 with: Color white);
		 borderColor: Color black;
		 borderWidth: 2;
		 height: 30.
	originalColor := self color.
	self
		on: #mouseEnter
		send: #mouseEnter:forMorph:
		to: self;
		
		on: #mouseLeave
		send: #mouseLeave:forMorph:
		to: self.
	self on: #mouseDown send: #mouseDown:forMorph: to: self.
	self initializeLetterMorph