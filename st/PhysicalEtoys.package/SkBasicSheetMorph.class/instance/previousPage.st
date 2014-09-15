navigation
previousPage
	self beep: 'click'.
	^ history
		ifNotNil: [self replace: history]