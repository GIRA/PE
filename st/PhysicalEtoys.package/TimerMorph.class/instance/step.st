stepping
step
	isStarted
		ifFalse: [^ self].
	current := (interval - (Time millisecondsSince: startTime)) max: 0.
	current = 0
		ifTrue: [self stopCountdown; trigger]