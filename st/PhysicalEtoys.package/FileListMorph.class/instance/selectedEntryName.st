accessing
selectedEntryName
	^selectedEntry isNil ifTrue: [''] ifFalse: [selectedEntry entryName]