initialize-release
initializeLeftButton
	| leftButton |
	leftButton := NxtButtonMorph leftButton.
	leftButton center: self center x - leftButton height @ (self center y + (leftButton height // 2));
		
		on: #mouseDown
		send: #leftClick
		to: self.
	self addMorph: leftButton