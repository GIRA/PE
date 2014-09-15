initialize-release
initialize
	super initialize.
	arrowSpeed := 2.
	self color: Color transparent;
		initializeSubmorphs;
		updatePosition.
	self currentHand addMouseListener: self