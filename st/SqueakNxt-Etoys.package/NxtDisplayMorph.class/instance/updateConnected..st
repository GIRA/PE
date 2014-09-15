update
updateConnected: newConnectionState
	"Only update if the new connection state is different"
	newConnectionState ~= isConnected
		ifTrue: ["We should update"
			isConnected := newConnectionState.
			self resetSubmorphs]