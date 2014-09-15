keeping alive
sendKeepAlive
	self isConnected ifFalse: [self stopKeepAliveProcess].
	protocol sendKeepAlive