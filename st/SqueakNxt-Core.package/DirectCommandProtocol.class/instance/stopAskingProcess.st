stepping
stopAskingProcess
	askingProcess isNil
		ifTrue: [^ self].
	askingProcess terminate. 
	askingProcess := nil.