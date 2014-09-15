accessing
normalizedValue
	[[^ self device normalizedValue]
		on: UnpluggedDevice
		do: [^ 0]]
		on: NotConnectedLego
		do: [^ 0]