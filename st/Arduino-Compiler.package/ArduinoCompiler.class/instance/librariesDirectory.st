accessing
librariesDirectory
	"It is important to keep this structure!!"
	^ ((FileDirectory default directoryNamed: 'Arduino')
		directoryNamed: 'hardware')
		directoryNamed: 'libraries'