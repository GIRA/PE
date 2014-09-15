mode
mode: aNxtProtocol
	"Keeps the connection state after changing the protocol"
	| wasConnected |
	wasConnected := self isConnected.
	nxt protocol: aNxtProtocol.
	(wasConnected and: [self isConnected not])
		ifTrue: [self connect]