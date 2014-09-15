accessing-mode
mode: anArduinoProtocol
	"Keeps the connection state after changing the protocol"
	| wasConnected |
	wasConnected := self isConnected.
	arduino protocol: anArduinoProtocol.
	(wasConnected and: [self isConnected not])
		ifTrue: [self connect]