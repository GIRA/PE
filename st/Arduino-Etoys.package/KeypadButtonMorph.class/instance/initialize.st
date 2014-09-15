initialize-release
initialize
	super initialize.
	self color: Color random;
		 "borderWidth: 2;"
		 cornerStyle: #rounded;
		 extent: 60 @ 60.
	self initializeFillStyle