motor
getDegrees
	^ (self sendMessageToCostume: #rotation) ifNil: [0]