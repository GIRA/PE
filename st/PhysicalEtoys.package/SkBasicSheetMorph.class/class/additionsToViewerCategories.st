viewer categories
additionsToViewerCategories
^ #(
(#spreadsheet (
#(command clearTable 'Deletes the contents of all cells')
#(command clearRow 'Deletes the contents of the current row cells' )
#(command clearColumn 'Deletes the contents of the current columns cells' )
#(slot totalRows 'Lets you change the amount of rows in the spreadsheet' Number readWrite Player getTotalRows Player setTotalRows:  )
#(slot totalColumns 'Lets you change the amount of columns in the spreadsheet' Number readWrite Player getTotalColumns Player setTotalColumns:  )
#(slot rowIndex 'Sets the current row' Number readWrite Player getRowIndex Player setRowIndex:  )
#(slot columnIndex 'Sets the current column' Number readWrite Player getColumnIndex Player setColumnIndex:  )
#(slot currentCharacters 'Lets you read and modify the characters of the current cell' String readWrite Player getCurrentCharacters Player setCurrentCharacters:  )
#(slot currentNumericValue 'Lets you read and modify the numeric value of the current cell' Number readWrite Player getCurrentNumericValue Player setCurrentNumericValue:  )
))

(#'data i/o' (
#(slot writeMode 'Lets you choose a write mode (overwrite or append)' WriteMode readWrite Player getWriteMode Player setWriteMode:  )
#(slot csvSeparator 'Lets you choose a character to act as a separator between cells' String readWrite Player getCsvSeparator Player setCsvSeparator:  )
#(slot csvFileName 'Sets the name of the file to import/export data' String readWrite Player getCsvFileName Player setCsvFileName:  )
#(command importDataFromFile 'Reads the data from the file and loads it in the spreadsheet')
#(command exportDataToFile 'Writes the data from the spreadsheet into the file')
))

)