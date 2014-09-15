connection
connectOnPort: portName boardType: anArduinoType
	"I reconfigure each pin every time I connect to a board"
	protocol connectOnPort: portName boardType: anArduinoType.
	self type: anArduinoType.
	500 milliSeconds asDelay wait.
	self reconfigurePins;
		startKeepAliveProcess