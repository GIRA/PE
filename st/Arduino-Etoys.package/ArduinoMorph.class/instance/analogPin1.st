analog pins
analogPin1
	^[ (arduino analogPin: 1) value]
		on: Error
		do: [-1]