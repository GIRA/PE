*PhysicalEtoys-skeleton-spreadsheet
getRowIndex
	^ self sheetMorph selection ifNil: [0] ifNotNil: [:rect | rect origin y]