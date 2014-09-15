reading/writing
loadProjectNamed: fileName on: directory
	(directory isKindOf: FileDirectory)
		ifFalse: [^ self].
	directory fileNamed: fileName do: [:file |
		self loadProjectStream: file]