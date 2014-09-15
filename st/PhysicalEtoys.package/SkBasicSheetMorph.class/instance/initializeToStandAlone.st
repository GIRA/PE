parts bin
initializeToStandAlone
	super initializeToStandAlone.
	self model: SkSheet new attachProject.
	self
		area: (0 @ 0 extent: 3 @ 3)