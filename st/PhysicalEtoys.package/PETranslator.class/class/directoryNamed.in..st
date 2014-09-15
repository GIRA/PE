accessing
directoryNamed: dirName in: directory
	(directory directoryExists: dirName)
		ifFalse: [directory createDirectory: dirName].
	^ directory directoryNamed: dirName