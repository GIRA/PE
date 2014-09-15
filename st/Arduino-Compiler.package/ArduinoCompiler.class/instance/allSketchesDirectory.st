accessing
allSketchesDirectory
	"It is important to keep this structure!!"
	^ (FileDirectory default directoryNamed: 'Arduino')
		directoryNamed: 'Sketches'