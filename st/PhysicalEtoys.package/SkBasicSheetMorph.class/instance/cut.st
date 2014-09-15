action
cut
	self copySelection.
	self selection top
		to: self selection bottom - 1
		do: [:y | self selection left
				to: self selection right - 1
				do: [:x | model textAt: x @ y put: '']]