initialization
initialize
	super initialize.
	self layoutPolicy:	TableLayout new;
		cellPositioning: #leftCenter;
		cornerStyle: #rounded;
		color: (Color r: 0.645 g: 0.645 b: 1.0);
		borderWidth: 1;
		borderColor: (Color r: 0.516 g: 0.516 b: 1.0);
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	self addSheet: SkBasicSheetMorph newStandAlone;
		addPageControls