plugging
plugOn: aPort 
	self flag: #Richo. "Both objects must know each other. This is not nice"
	self isPlugged
		ifTrue: [^ AlreadyPluggedDevice signal: ('The {1} is already plugged' translated format: {self asString})].
	thisContext client == aPort
		ifFalse: [aPort plug: self].
	port := aPort