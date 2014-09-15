initialize-release
initializeOkButton
	| okButton |
	okButton := NxtButtonMorph okButton.
	okButton center: self center x @ (self center y + (okButton height // 2));
		
		on: #mouseDown
		send: #okClick
		to: self.
	self addMorph: okButton