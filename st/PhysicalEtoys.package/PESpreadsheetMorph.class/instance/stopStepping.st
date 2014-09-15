stepping
stopStepping
	self isStopped ifTrue: [^ self].
	state := #stopped.
	spreadsheet
		saveCSVFile: self fileName
		separator: $;.
	super stopStepping