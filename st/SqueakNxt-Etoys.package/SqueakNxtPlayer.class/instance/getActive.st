sensors
getActive
	^ (self sendMessageToCostume: #active) ifNil: [false]