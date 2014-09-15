actions
float
	self isPlugged
		ifFalse: [^ self].
	[self device float] on: NotConnectedLego do: ["Nothing"]