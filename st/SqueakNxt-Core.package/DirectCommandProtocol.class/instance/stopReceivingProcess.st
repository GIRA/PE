stepping
stopReceivingProcess
	receivingProcess isNil
		ifTrue: [^ self].
	receivingProcess terminate. 
	receivingProcess := nil.