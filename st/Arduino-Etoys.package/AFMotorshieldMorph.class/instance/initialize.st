initializing
initialize
	super initialize.
	self extent: self class form extent.
	arduino := AFMotorShield new.
	boardType := self class lastBoardType.
	self initializePortName;
		initializePins;
		initializeSpecialPins 