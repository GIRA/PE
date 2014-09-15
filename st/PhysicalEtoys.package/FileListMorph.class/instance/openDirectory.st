actions
openDirectory
	self selectedEntryIsDirectory
		ifFalse: [^ self inform: 'Selected entry is not a directory' translated].
	self selectedEntryName = '..'
		ifTrue: [^ self directory: directory containingDirectory].
	self
		directory: (directory directoryNamed: self selectedEntryName)