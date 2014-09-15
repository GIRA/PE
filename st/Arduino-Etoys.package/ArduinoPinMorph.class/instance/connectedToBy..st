attaching
connectedToBy: aConnector 
	"notification upon connection by a NCConnectorMorph"
	| device |
	aConnector connectFinishTo: attachmentPoint.
	aConnector startControllingConnections.
	device := aConnector sourceMorph owner.
	device attach: pin by: aConnector
