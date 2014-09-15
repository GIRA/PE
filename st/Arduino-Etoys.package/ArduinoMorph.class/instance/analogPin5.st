analog pins
analogPin5
	^ [(arduino analogPin: 5) value]
		on: Error
		do: [-1]