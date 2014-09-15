initialize-release
initialize
	super initialize.
	self finalizationRegistry add: self.
	buttons := Matrix rows: 3 columns: 3 element: false.