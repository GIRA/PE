stepping
startStepping
	self isStopped
		ifTrue: [
		time := Time millisecondClockValue.
		[(FileStream forceNewFileNamed: self fileName do: [:file |
			file nextPutAll: 'time' translated;
				nextPut: $;;
				nextPutAll: 'value' translated;
				cr])] on: Error do: [].
		index := 1.
		spreadsheet clearTable; setAppend].
	state := #running.
	super startStepping