accessing
selectedEntryPath
^self selectedEntryName = '..' ifTrue: [directory containingDirectory pathName] ifFalse: [directory fullPathFor: self selectedEntryName  ]