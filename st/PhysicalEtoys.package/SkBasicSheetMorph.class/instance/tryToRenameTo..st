accessing
tryToRenameTo: aName 
	^ model
		ifNotNilDo: [:m | m name: aName]