initialization
initialize
	super initialize.
	self extent: self class form extent.
	self initializeAttachmentPoints.
	device := self class device new