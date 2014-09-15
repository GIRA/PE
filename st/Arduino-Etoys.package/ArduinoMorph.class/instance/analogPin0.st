analog pins
analogPin0
	^[ (arduino analogPin: 0) value]
		on: Error
		do: [-1]