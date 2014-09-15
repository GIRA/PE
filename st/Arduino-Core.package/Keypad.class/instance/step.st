stepping
step
1 to: 3 do: [:r |
	[self rowPins first value: (r = 1) asBit.
	self rowPins second value: (r = 2) asBit.
	self rowPins third value: (r = 3) asBit.
	50 milliSeconds asDelay wait.
	1 to: 3 do: [:c |
		buttons at: r at: c put: ((self columnPins at: c) value = 1).
	]] on: Error do: [200 milliSeconds asDelay wait]]