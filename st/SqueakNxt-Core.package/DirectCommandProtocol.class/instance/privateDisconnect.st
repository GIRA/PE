connection
privateDisconnect
	"Private. Use #disconnect instead"
	self stopSteppingProcesses.
	connection ifNotNil: [
		connection disconnect.
		connection := nil].
	self initializeVariables
	