sensors
getAudible
	^ (self sendMessageToCostume: #audible) ifNil: [false]