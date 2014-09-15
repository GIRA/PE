plugging
unplug
	self pluggedDevice unplug.
	pluggedDevice := nil.
	self sendUnplugCommand