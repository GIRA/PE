value
isLedOn
	^ [device value ~= 0] on: Error do: [false] 