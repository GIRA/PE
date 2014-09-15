initialization
initialize
	super initialize.
	form := self class form.
	self extent: self class form extent.
	self initializeAttachmentPoint