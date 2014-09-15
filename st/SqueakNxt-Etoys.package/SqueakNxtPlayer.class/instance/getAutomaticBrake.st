motor
getAutomaticBrake
	^ (self sendMessageToCostume: #automaticBrake) ifNil: [false]