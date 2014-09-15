connection
connectOnPort: aString
	"If the port cant't be open it stores nil, this way we can know if it is
	connected by asking if port is nil.
	In windows we can't open a port using the port name, so I convert the
	string to an integer"
	self isConnected ifTrue: [^ self].
	port := SerialPort new baudRate: 57600.
	port := port
				openPort: (('COM*' match: aString)
						ifTrue: [aString asInteger]
						ifFalse: [aString]).
	self isConnected
		ifTrue: [self controlFirmwareInstalled;
					startSteppingProcess]