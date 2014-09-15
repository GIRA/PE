sensors
getNormalizedValue
	^ (self sendMessageToCostume: #normalizedValue) ifNil: [0]