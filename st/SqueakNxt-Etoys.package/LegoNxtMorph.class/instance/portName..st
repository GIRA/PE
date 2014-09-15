accessing
portName: aSymbol
	self isConnected ifTrue: [^ self].
	portName := (aSymbol = #'other...'
				ifTrue: [(FillInTheBlank request: 'Port name:' translated)  asSymbol]
				ifFalse: [aSymbol]).
	controlPanel portName: portName.