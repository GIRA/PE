sensors
getIsPressed
	^ (self sendMessageToCostume: #isPressed) ifNil: [false]