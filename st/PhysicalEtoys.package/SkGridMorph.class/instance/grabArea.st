accessing
grabArea
	^ (self topLeft corner: self right @ (self top + 16))
		insetBy: 3