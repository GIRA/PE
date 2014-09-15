i/o
openCSVFile: filePath separator: separator
	FileStream 
		readOnlyFileNamed: filePath 
		do: [:file || values rows columns |
			file size = 0 
				ifTrue: [values := #(#('')). rows := columns := 1]
				ifFalse: [values := CSVParser parse: file delimiter: separator.
					values 
						ifEmpty: [rows := columns := 0]
						ifNotEmpty: [rows := values size.
							columns := values first size]].
			"Update number of cells"
			self numberOfRows: rows;
				numberOfColumns: columns.
			"First fill the cells"
			1 to: rows do: [:r|
				1 to: columns do: [:c |					
					self cellValueAt: r@c put: ((values at: r) at: c ifAbsent: '').
					(self cellAt: r@c) autoFit: true]].
			"Then fix the cell heights"
			self submorphsDo: [:row || heights max |
				heights := row submorphs collect: [:each | each height].
				max := heights max.
				row submorphsDo: [:text |
					text autoFit: false.
					text height: heights max]]].