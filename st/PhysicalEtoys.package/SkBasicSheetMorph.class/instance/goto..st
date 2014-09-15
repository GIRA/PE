navigation
goto: aSkObject 
	| grid |
	self beep: 'click'.
	grid _ aSkObject grid.
	self replace: grid.
	grid history: self.
	^ grid