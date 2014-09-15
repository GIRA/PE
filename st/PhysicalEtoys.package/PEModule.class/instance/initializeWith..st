initialization
initializeWith: aString
	file := self defaultDirectory fileNamed: aString.
	zip := ZipArchive new readFrom: file.
	self initialize