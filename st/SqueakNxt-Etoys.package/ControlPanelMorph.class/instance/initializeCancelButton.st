initialize-release
initializeCancelButton
	| cancelButton |
	cancelButton := NxtButtonMorph cancelButton.
	cancelButton center: self center x @ (self center y + (cancelButton height * 2));
		
		on: #mouseDown
		send: #cancelClick
		to: self.
	self addMorph: cancelButton