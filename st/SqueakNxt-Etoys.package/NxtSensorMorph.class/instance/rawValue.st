accessing
rawValue
	[[^ self device rawValue]
		on: UnpluggedDevice
		do: [^ 0]]
		on: NotConnectedLego
		do: [^ 0]