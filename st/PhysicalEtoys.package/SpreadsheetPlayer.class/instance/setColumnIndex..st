spreadsheet
setColumnIndex: aNumber 
(aNumber > self getTotalColumns)
	ifTrue: [columnIndex := 1.^self].
aNumber < 1
	ifTrue: [columnIndex := self getTotalColumns.^self].
columnIndex := aNumber.