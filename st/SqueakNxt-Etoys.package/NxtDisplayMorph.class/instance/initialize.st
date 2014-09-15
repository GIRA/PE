initialize
initialize
	super initialize.
	self extent: 135 @ 80;
		color: (Color
			r: 0.823
			g: 0.948
			b: 0.63);
		borderWidth: 3;
		borderColor: Color black.
	isConnected := false.
	self initializeSubmorphs