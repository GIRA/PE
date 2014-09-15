*PhysicalEtoys-skeleton-data i/o
setCsvSeparator: aString
	^ self csvSeparator: (aString at: 1 ifAbsent: $,)