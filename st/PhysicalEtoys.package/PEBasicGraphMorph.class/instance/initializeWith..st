initialization
initializeWith: aValuableObject
	self initialize.
	self extent: 800@200.
	source := aValuableObject.
	points := OrderedCollection new.
	cartesianBounds := (0 @ 0 corner: 2000 @ 1023).
	lastTimeChanged := startTime := Time millisecondClockValue.
	isGraphing := false.
