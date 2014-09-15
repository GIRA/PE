plugging
plug: aNxtPluggableDevice 
	self isBusy
		ifTrue: [^ BusyPort signal: self asString , ' is busy' translated].
	aNxtPluggableDevice plugOn: self.
	pluggedDevice := aNxtPluggableDevice.
	self sendPlugCommandFor: aNxtPluggableDevice