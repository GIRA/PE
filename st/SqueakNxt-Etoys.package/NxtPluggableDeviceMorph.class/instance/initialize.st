initialize-release
initialize
	super initialize.
	device := self class myDevice.
	self image: self class form.
	self initializeAttachmentPoint.