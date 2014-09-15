connection
getBatteryLevel
	^ (self sendMessageToCostume: #batteryLevel) ifNil: [0]