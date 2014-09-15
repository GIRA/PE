*PhysicalEtoys-skeleton-base
csvFileName
	^self sheetMorph valueOfProperty: #csvFileName ifAbsent: ['fileName.csv'].