initialize
initialize
super initialize.
self layoutPolicy: TableLayout new; listDirection: #leftToRight.
self hResizing: #shrinkWrap;
	vResizing: #shrinkWrap.
self color: Color black.
self initializeSubmorphs