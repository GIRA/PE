actions
rotation
	^ [self device rotation]
		on: Error
		do: [-1]