stepping
step
	| |
	self isRunning ifFalse: [^ self].
	spreadsheet 
		cellValueAt: index @ 1 put: (self print: (Time millisecondClockValue - time) / 1000);
		cellValueAt: index @ 2 put: (self print: source value).
	index = self maxRows
		ifTrue: [
			spreadsheet 
				saveCSVFile: self fileName separator: $;;
				clearTable
			].
	index := (index \\ self maxRows) + 1