*PhysicalEtoys-skeleton-data i/o
setWriteMode: aSymbol
	(#(overwrite append) includes: aSymbol)
		ifTrue: [self writeMode: aSymbol]