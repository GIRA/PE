spreadsheet
clearColumn
[^self costume renderedMorph clearColumn: self getColumnIndex] on: Error do: [:err| self inform: err description]