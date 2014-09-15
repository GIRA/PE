connection
privateDisconnect
	"Use #disconnect"
	self stopSteppingProcess.
	port close.
	port := nil.
	self initialize