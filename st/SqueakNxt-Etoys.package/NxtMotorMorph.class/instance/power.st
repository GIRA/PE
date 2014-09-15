actions
power
	^ [self device power]
		on: Error
		do: [0]