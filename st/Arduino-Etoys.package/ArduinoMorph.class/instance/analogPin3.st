analog pins
analogPin3
	^[ (arduino analogPin: 3) value]
		on: Error
		do: [-1]