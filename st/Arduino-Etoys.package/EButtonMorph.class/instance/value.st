accessing
value
	^ [device value = 1]
		on: Error
		do: [false]