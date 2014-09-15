accessing
numberOfRows: aNumber
| diff |
aNumber <= 0 ifTrue: [^self error: 'Spreadsheet must contain at least one row' translated].
diff := aNumber - numberOfRows.
diff > 0 ifTrue: [self addRows: diff] ifFalse: [self removeRows: diff negated]
