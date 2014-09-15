fileOut
saveInDirectory: aDirectory
	aDirectory
		forceNewFileNamed: self headerFileName do: [:file | file nextPutAll: self header];
		forceNewFileNamed: self sourceFileName do: [:file | file nextPutAll: self source]