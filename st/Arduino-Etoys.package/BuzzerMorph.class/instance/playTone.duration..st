value
playTone: freq duration: dur
	[device playTone: freq duration: dur]
		on: Error
		do: ["Nothing"]