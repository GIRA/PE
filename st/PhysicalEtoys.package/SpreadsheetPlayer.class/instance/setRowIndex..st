spreadsheet
setRowIndex: aNumber 
(aNumber > self getTotalRows)
	ifTrue: [rowIndex := 1.^self].
aNumber < 1
	ifTrue: [rowIndex := self getTotalRows.^self].
rowIndex := aNumber.