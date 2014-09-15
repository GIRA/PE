keeping alive
sendKeepAlive
	self send: {self asCommand: self class rqKeepAlive} asByteArray