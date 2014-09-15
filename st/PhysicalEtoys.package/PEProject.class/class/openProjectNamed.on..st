reading/writing
openProjectNamed: fileName on: directory
	(directory isKindOf: FileDirectory)
		ifFalse: [^ self].
	directory fileNamed: fileName do: [:file |
		self openProjectStream: file]