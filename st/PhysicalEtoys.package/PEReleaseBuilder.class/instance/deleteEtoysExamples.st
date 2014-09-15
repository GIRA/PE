cleaning
deleteEtoysExamples
	"
	This method will remove the entire 'ExampleEtoys' directory and
	all the Etoys projects installed in the default directory.
	"
	| dir |
	self includesEtoys ifTrue: [^ self].
	dir := FileDirectory default.
	(dir directoryNamed: 'ExampleEtoys')
		deleteLocalFiles.
	dir deleteDirectory: 'ExampleEtoys'.
	dir fileNames
		select: [:each | each endsWith: '.pr']
		thenDo: [:each | dir deleteFileNamed: each]