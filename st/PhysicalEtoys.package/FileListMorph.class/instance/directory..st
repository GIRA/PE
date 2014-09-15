accessing
directory: aFileDirectory
	| newSelectedEntry |
	(self isValidDirectory: aFileDirectory)
		ifFalse: [^self].
	directory := aFileDirectory.
	self
		submorphsDo: [:m | m delete].
	self initializeSubmorphs.
	self entries isEmpty ifTrue: [selectedEntry := nil. ^self].
	newSelectedEntry := self entries detect: [:each | each entryName = self selectedEntryName] ifNone: nil.
	self selectedEntry: (newSelectedEntry ifNil: [self entries first])