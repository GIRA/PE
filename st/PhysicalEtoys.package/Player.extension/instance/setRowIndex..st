*PhysicalEtoys-skeleton-spreadsheet
setRowIndex: aNumber
	self sheetMorph selectSelection: self getColumnIndex @ (aNumber \\ self getTotalRows)