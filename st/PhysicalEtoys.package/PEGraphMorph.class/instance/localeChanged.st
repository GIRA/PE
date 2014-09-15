updating
localeChanged
	self submorphsDo: [:each | each delete].
	self initializeSubmorphs