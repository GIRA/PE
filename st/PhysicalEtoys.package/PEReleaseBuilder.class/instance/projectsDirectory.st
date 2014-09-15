accessing
projectsDirectory
	^ (self rootDirectory
		directoryNamed: 'release')
		directoryNamed: 'projects'