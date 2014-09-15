initialization
initialize
	super initialize.
	map _ Dictionary new.
	comment _ '' asText.
	self updateCache.
	self initializeArgs