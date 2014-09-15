accessing
speed: s
	self controlAttaching; reconfigureIfNecessary.
	pins first
		speed: (s min: 100 max: 0)