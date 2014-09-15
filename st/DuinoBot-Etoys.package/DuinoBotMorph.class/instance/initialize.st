initialize
initialize
	super initialize.
	self extent: self class form extent.
	arduino := DuinoBot new.
	boardType := self class lastBoardType.
	self initializePortName;
		initializePins;
		initializeSpecialPins