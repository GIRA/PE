connection
getIsConnected
	^ (self sendMessageToCostume: #isConnected) ifNil: [false]