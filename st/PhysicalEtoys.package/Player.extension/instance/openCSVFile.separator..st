*PhysicalEtoys-skeleton-data i/o
openCSVFile: filePath separator: separator
	FileStream 
		readOnlyFileNamed: filePath 
		do: [:file || values rows columns |
			values := CSVParser parse: file delimiter: separator.
			rows := values size.
			columns := values first size.
			self setTotalRows: rows + 1;
				setTotalColumns: columns + 1.
			1 to: rows do: [:r|
				1 to: columns do: [:c |
					((values at: r) at: c ifAbsent: nil)
						ifNotNil: [:aString || cell |
							cell := self sheet assuredCellAt: c @ r.
							(aString beginsWith: '=')
								ifTrue: [cell formula: aString]
								ifFalse: [cell contents: aString]
							]]]].