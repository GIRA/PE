actions
batteryLevel
	^ nxt isConnected
		ifTrue: [nxt batteryLevel]
		ifFalse: [0]