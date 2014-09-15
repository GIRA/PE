initializing
initialize
	super initialize.
	self extent: self class form extent.
	current := 0.
	interval := 1000.
	isStarted := false