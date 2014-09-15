*PhysicalEtoys-skeleton-spreadsheet
setTotalRows: aNumber
	^ self sheetMorph area: (0@0 corner: self getTotalColumns @ (aNumber max: 2))