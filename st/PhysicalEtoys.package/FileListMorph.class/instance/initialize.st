initialization
initialize
	super initialize.
	self layoutPolicy: TableLayout new;
		 listDirection: #topToBottom.
	self hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap.
	self color: Color transparent.
	filter := '*'.
	showDirectories := true.
	self initializeSubmorphs.
	self selectedEntry: self entries first 