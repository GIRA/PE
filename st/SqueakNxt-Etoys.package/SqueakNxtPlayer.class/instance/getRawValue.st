sensors
getRawValue
	^ (self sendMessageToCostume: #rawValue) ifNil: [0]