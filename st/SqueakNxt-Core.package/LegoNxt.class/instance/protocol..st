accessing
protocol: aNxtProtocol
	[self disconnect] on: NotConnectedLego do: [].
	protocol := aNxtProtocol