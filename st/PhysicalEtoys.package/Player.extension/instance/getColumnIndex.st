*PhysicalEtoys-skeleton-spreadsheet
getColumnIndex
	^ self sheetMorph selection ifNil: [0] ifNotNil: [:rect | rect origin x]