connection
disconnect
	self isConnected ifFalse: [^ self].
	[self sendDisconnect] on: Error do: ["Nothing"].
	self privateDisconnect