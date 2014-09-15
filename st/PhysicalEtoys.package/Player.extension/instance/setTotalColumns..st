*PhysicalEtoys-skeleton-spreadsheet
setTotalColumns: aNumber
	^ self sheetMorph area: (0@0 corner: (aNumber max: 2) @ self getTotalRows)