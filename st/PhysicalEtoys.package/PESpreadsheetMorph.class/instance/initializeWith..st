initialize-release
initializeWith: aValuableObject
	source := aValuableObject.
	self initialize
		layoutPolicy: TableLayout new;
		rubberBandCells: true;
		listDirection: #topToBottom;
		extent: 1@1;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		color: (Color r: 0.645 g: 0.71 b: 1.0);
		cornerStyle: #rounded;
		borderColor: #raised;
		layoutInset: 5;
		cellInset: 10.
	time := 0.
	state := #stopped.
	self initializeSpreadsheet;
		initializeSubmorphs.