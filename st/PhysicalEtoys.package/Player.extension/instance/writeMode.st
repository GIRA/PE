*PhysicalEtoys-skeleton-base
writeMode
	^self sheetMorph valueOfProperty: #writeMode ifAbsent: [#overwrite].