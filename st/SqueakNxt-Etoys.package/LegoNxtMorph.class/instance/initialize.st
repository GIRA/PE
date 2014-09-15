initialize-release
initialize
	super initialize.
	self borderWidth: 1;
		 borderColor: #raised;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 listDirection: #topToBottom;
		 cornerStyle: #rounded;
		 color: Color black.
	nxt := LegoNxt new.
	self initializePortName.
	self initializeSubmorphs