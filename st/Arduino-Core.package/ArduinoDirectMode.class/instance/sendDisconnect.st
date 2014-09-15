connection
sendDisconnect
	self send: {self asCommand: self class rqDisconnect} asByteArray.