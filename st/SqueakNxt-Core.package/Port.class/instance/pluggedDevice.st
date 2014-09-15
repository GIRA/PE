accessing
pluggedDevice
	pluggedDevice isNil
		ifTrue: [^ UnpluggedDevice signal: 'Nothing is plugged in ' translated, self asString].
	^ pluggedDevice