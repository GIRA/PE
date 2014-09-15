stepping
step
	| now |
	isGraphing ifFalse: [^ self].
	now := Time millisecondClockValue - startTime.
	self cartesianBounds: (self cartesianBounds left @ self minVal corner: self cartesianBounds right @ self maxVal);
		 addPoint: now @ source value.
	now > self cartesianBounds right
		ifTrue: [self move: 100 @ 0].
	(Time millisecondsSince: lastTimeChanged) > 100
		ifTrue: [self changed.
			lastTimeChanged := Time millisecondClockValue]