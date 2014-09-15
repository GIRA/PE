i/o
saveCSVFile: filePath separator: separator
	FileStream 
		perform: (self overwrite ifTrue: [#forceNewFileNamed:do:] ifFalse: [#fileNamed:do:])
		with: filePath
		with: [:file |
			file setToEnd.
			self rows do: [:row |
				row do: [:cell | file 
						nextPut: $";
						nextPutAll: (cell copyReplaceAll: '"' with: '""');
						nextPut: $"] 
					separatedBy: [file nextPut: separator].
				file cr]]