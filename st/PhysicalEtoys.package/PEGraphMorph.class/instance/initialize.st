initialize-release
initialize
	super initialize.
	self layoutPolicy: TableLayout new;
		rubberBandCells: true;
		listDirection: #topToBottom;
		vResizing: #rigid;
		hResizing: #rigid;
		extent: 800@300;
		layoutInset: 5;
		cellInset: 10;
		borderWidth: 1;
		wrapCentering: #center;
		cellPositioning: #leftCenter;
		color: Color white;
		borderColor: Color gray;
		initializeGraph;
		initializeSubmorphs