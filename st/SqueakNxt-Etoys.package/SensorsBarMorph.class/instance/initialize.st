initializing
initialize
	super initialize.
	self borderWidth: 0;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 listDirection: #leftToRight;
		 color: Color black.
	self initializeSubmorphs