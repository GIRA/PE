attaching
refreshDeviceAttachments
	attachments detect: [:each| each isNil] ifNone: [self attachDevice. ^self].
	self detachDevice