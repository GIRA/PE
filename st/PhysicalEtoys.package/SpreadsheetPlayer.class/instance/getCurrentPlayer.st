spreadsheet
getCurrentPlayer
	^ (self costume renderedMorph 
			cellAt: self getRowIndex @ self getColumnIndex)
			assuredPlayer