motor
getPower
	^ (self sendMessageToCostume: #power) ifNil: [0]