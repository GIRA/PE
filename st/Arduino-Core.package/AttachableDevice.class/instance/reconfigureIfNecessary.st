configuring
reconfigureIfNecessary
	"This method must be called every time we try to communicate with the
	device. This way we are sure that the device is properly configured"
	isConfigured
		ifFalse: [self setPins: pins]