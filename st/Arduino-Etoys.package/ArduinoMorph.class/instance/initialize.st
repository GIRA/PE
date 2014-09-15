initialize-release
initialize
	super initialize.
	self extent: self class form extent.
	arduino := Arduino new.
	boardType := self class lastBoardType.
	self initializePortName.
	self initializePins