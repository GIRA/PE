plugging
unplug
	self flag: #Richo. "Both objects must know each other. This is not nice"
	self isPlugged
		ifFalse: [^ UnpluggedDevice signal: 'The ', self asString , ' is already unplugged'].
	thisContext client = port
		ifFalse: [port unplug].
	port := nil