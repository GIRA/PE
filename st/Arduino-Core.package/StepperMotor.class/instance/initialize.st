initialize-release
initialize
	super initialize.
	self finalizationRegistry add: self.
	stepTime := 100.
	isGoingForward := true.
	currentStep := 1.
	self setNormalMode