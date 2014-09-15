*PhysicalEtoys-skeleton-spreadsheet
getCurrentCharacters
	^ (self sheet cellAt: self getColumnIndex @ self getRowIndex) contents