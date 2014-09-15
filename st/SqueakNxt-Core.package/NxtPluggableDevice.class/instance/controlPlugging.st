error control
controlPlugging
	self isPlugged
		ifFalse: [^ UnpluggedDevice signal: ('The {1} must be plugged' translated format: {self asString})]