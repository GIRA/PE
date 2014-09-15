*PhysicalEtoys-skeleton-spreadsheet
setCurrentCharacters: aString
	(self sheet assuredCellAt: self getColumnIndex @ self getRowIndex) contents: aString