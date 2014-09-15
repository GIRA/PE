accessing
numberOfColumns: aNumber
| diff |
aNumber <= 0 ifTrue: [^self error: 'Spreadsheet must contain at least one column' translated].
diff := aNumber - numberOfColumns.
diff > 0 ifTrue: [self addColumns: diff] ifFalse: [self removeColumns: diff negated]
