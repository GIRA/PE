keep alive
sendKeepAlive
	(self port nextPutAll: {0} asByteArray) < 0
		ifTrue: [self disconnect]