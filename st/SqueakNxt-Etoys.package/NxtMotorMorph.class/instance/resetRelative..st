actions
resetRelative: aBoolean 
	self isPlugged
		ifFalse: [^ self].
	[self device resetRelative: aBoolean]
		on: NotConnectedLego do: ["Nothing"]