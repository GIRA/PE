analog pins
analogPin4
	^[ (arduino analogPin: 4) value]
		on: Error
		do: [-1]