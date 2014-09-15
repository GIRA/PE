accessing
watcher
	"Returns an object that continuously updates its value with the current available serial ports list.

		self watcher openInHand.
	"
	^ (UpdatingStringMorph 
		on: [PESerialPortList availableSerialPorts asArray]
		selector: #value)
		stepTime: 1000