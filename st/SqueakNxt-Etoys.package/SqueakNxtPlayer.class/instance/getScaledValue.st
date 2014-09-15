sensors
getScaledValue
	^ (self sendMessageToCostume: #scaledValue) ifNil: [0]