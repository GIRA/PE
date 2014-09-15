initialize-release
initializeRightButton
	| rightButton |
	rightButton := NxtButtonMorph rightButton.
	rightButton center: self center x + rightButton height @ (self center y + (rightButton height // 2));
		
		on: #mouseDown
		send: #rightClick
		to: self.
	self addMorph: rightButton