stepping
startGraphing
	isGraphing := true.
	points := OrderedCollection new.
	cartesianBounds := (0 @ self minVal corner: 2000 @ self maxVal).
	startTime := Time millisecondClockValue.	
	self startStepping