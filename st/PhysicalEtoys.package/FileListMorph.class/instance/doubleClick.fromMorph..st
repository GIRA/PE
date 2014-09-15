event handling
doubleClick: evt fromMorph: aDirectoryEntryMorph 
	aDirectoryEntryMorph isDirectory
		ifFalse: [^ self].
	aDirectoryEntryMorph entryName = '..'
		ifTrue: [^ self directory: directory containingDirectory].
	self
		directory: (directory directoryNamed: aDirectoryEntryMorph entryName)