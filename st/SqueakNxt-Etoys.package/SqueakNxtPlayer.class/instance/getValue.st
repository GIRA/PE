sensors
getValue
	^ (self sendMessageToCostume: #value) ifNil: [0]