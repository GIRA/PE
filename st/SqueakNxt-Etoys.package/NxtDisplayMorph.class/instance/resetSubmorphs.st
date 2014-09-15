update
resetSubmorphs
	self submorphsDo: [:each | each delete];
		initializeSubmorphs