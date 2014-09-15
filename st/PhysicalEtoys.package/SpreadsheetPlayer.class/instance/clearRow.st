spreadsheet
clearRow
[^self costume renderedMorph clearRow: self getRowIndex] on: Error do: [:err| self inform: err description]