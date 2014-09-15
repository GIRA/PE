initialize-release
initialize
	super initialize.
	status := FantomStatus new: 0.
	self initializeMessages