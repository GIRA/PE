initialization
initialize
	super initialize.
	self extent: 1@1.
	self layoutPolicy: TableLayout new;
		 listDirection: #leftToRight.
	self hResizing: #spaceFill;
		 vResizing: #shrinkWrap.
	self color: Color white.
	self initializeSubmorphs