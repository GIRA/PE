error control
controlConnection
	self isConnected
		ifFalse: [^ NotConnectedLego signal: 'The Lego Nxt must be connected to a serial port' translated]