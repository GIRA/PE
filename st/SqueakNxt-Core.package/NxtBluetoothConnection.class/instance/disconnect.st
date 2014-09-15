connection
disconnect
	port ifNotNil: [
		port close.
		port := nil].