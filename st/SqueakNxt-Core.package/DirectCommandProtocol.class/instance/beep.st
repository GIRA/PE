actions
beep
	| delay | 
	delay := Delay forMilliseconds: 200.
	self playTone: 2500 duration: 200.
	delay wait.
	self playTone: 2000 duration: 200.
	delay wait.
	self playTone: 2500 duration: 200