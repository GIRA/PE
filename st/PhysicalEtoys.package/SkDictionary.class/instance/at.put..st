accessing
at: key put: anObject
	self flag: #TODO.
	map at: key put: anObject.
	self updateCache.
	^ anObject