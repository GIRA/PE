*PhysicalEtoys-skeleton-spreadsheet
setColumnIndex: aNumber
	self sheetMorph selectSelection: (aNumber \\ self getTotalColumns) @ self getRowIndex