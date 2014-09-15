actions
brake
	self isPlugged
		ifFalse: [^ self].
	[self device brake] on: NotConnectedLego do: ["Nothing"]