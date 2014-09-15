event handling
selectedEntry: aDirectoryEntryMorph
	selectedEntry ifNotNilDo: [:old | old color: Color white].
	selectedEntry := aDirectoryEntryMorph color: Color blue muchLighter.