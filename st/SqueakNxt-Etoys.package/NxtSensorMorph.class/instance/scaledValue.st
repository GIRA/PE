accessing
scaledValue
	[[^ self device scaledValue]
		on: UnpluggedDevice
		do: [^ 0]]
		on: NotConnectedLego
		do: [^ 0]