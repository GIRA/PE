open/close
openSqueakPort: portId
	"Hack to allow PESerialPorts open port numbers greater than 32.
	Since the ScratchPlugin only allows 32 as the maximum port number,
	we use the squeak's serial port for this rare cases."
	| newPort |
	newPort := self class squeakSerialPort new
					baudRate: baudRate;
					yourself.
	self becomeForward: newPort.
	^ newPort openPort: portId