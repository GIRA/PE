analog pins
analogPin2
	^[ (arduino analogPin: 2) value]
		on: Error
		do: [-1]