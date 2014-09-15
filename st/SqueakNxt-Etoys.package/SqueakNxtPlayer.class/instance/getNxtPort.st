connection
getNxtPort
	^ (self sendMessageToCostume: #portName) ifNil: ['']